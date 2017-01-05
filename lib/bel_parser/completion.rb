require 'bel_parser/parsers/expression/statement_autocomplete'
require 'bel_parser/parsers/serializer'
require_relative 'mixin/levenshtein'

class ::AST::Node

  def _metadata
    ivars = instance_variables - [:@type, :@children, :@hash]
    ivars.map { |iv| [iv, instance_variable_get(iv)] }.to_s
  end
  private :_metadata

  def to_sexp(indent=0)
    indented = "  " * indent
    sexp = "#{indented}(#{fancy_type} #{_metadata}"

    first_node_child = children.index do |child|
      child.is_a?(::AST::Node) || child.is_a?(Array)
    end || children.count

    children.each_with_index do |child, idx|
      if child.is_a?(::AST::Node) && idx >= first_node_child
        sexp << "\n#{child.to_sexp(indent + 1)}"
      else
        sexp << " #{child.inspect}"
      end
    end

    sexp << ")"

    sexp
  end
end

# Use simple-statement as a base.
# 0. Build a new partial AST parser for statement. Provide specific statement type on yield.
module BELParser
  module Completion
    extend BELParser::Parsers::AST::Sexp
    extend BELParser::Parsers

    def self.complete(input, spec, search, namespaces, caret_position = input.length)
      # 1. Parse AST using statement_autocomplete ragel FSM.
      # 2. For cursor, find node in AST.
      # 3. Determine the node type being completed.
      # 4. Compute completion AST for each suggestion.
      # 5. For each suggestion, transform original AST into full completion.

      # TODO 1. Pass caret_position to StatementAutocomplete; adjust if spaces removed before caret position.
      #      e.g. p(HGNC:AKT1, |)  - here we should subtract 1 from caret_position since we drop the space.
      # TODO 2. Make sure all prefix, value, and parameter completions all work.
      # TODO 3. Add inner term completion for argument or value matching function.
      # TODO 4. Work on a term stack within StatementAutocomplete.
      # TODO 5. Make inner term completions work.
      ast, caret_position = BELParser::Parsers::Expression::StatementAutocomplete.parse(input, caret_position)
      puts "parsed AST:"
      puts ast.to_sexp(1)
      puts "caret: #{caret_position}"

      completing_node = find_node(ast, caret_position)
      puts "completing_node: #{completing_node}"
      return [] unless completing_node

      case completing_node.type
      when :identifier
        string_literal = completing_node.string_literal
        functions = FunctionCompleter.new(spec, search, namespaces).complete(string_literal, caret_position)
        functions.map { |fx|
          fx_name = fx.short.to_s
          completion =
            serialize(
              term(
                function(
                  identifier(
                    fx_name)))
            )

          {
            type:           :function,
            id:             fx.long.to_s,
            label:          fx.long.to_s,
            value:          completion,
            caret_position: fx_name.length + 1
          }
        }
      when :argument
        if completing_node.child.nil?
          completion_node =
            argument(
              parameter(
                prefix(
                  identifier(
                    "HGNC")),
                value(
                  identifier(
                    "AKT1"))),
            character_range: completing_node.character_range)
          completion = serialize(MergeCompletion.new(completion_node).process(ast))

          [
            {
              type:           :namespace_value,
              id:             'HGNC:AKT1',
              label:          'HGNC:AKT1',
              value:          completion,
              caret_position: completion.length
            }
          ]
        elsif completing_node.parameter?
          parameter = completing_node.child
          prefix, value = parameter.children
          if Range.new(*prefix.character_range, true).include?(caret_position)
            puts "completing the argument->parameter->prefix..."
            puts "  #{prefix.to_sexp(1)}"
          else
            puts "completing the argument->parameter->value..."
            puts "  #{value.to_sexp(1)}"
            value_str = value.first_child.string_literal

            parameters =
              ParameterCompleter.new(
                spec, search, namespaces
              ).complete(value_str, caret_position - value.range_start)

            parameters.map { |(ns, v)|
              value =
                if v.scan(/[^\w]/)
                  value(
                    string(
                      v))
                else
                  value(
                    identifier(
                      v))
                end

              completion_node =
                argument(
                  parameter(
                    prefix(
                      identifier(
                        ns)),
                    value),
                character_range: completing_node.character_range)
              completion = serialize(MergeCompletion.new(completion_node).process(ast))

              {
                type:           :namespace_value,
                id:             "#{ns}:#{v}",
                label:          "#{ns}:#{v}",
                value:          completion,
                caret_position: completion.length
              }
            }
          end
        else
          # TODO Completing term argument, will we ever get here?
        end
      else
        []
      end
    end

    def self.find_node(ast, caret_position)
      ast.traverse do |node|
        next if node.type == :term
        return node if node.range_end == caret_position
      end

      nil
    end

    class BaseCompleter
      include BELParser::Parsers::AST::Sexp

      def initialize(spec, search, namespaces)
        @spec       = spec
        @search     = search
        @namespaces = namespaces
      end

      def complete(string_literal, caret_position, options = {})
        raise NotImplementedError, "#{__method__} is not implemented."
      end
    end

    class FunctionCompleter < BaseCompleter

      def complete(string_literal, caret_position)
        pattern = /.*#{Regexp.quote(string_literal)}.*/i
        @spec.functions.select { |fx| fx =~ pattern }
      end
    end

    class ParameterCompleter < BaseCompleter
      L = BELParser::Levenshtein

      def complete(string_literal, caret_position)
        query =
          case
          when caret_position == string_literal.length
            "#{string_literal}*"
          when caret_position == 0
            "*#{string_literal}"
          else
            ante = string_literal.slice(0...caret_position)
            post = string_literal.slice(caret_position..-1)
            "#{ante}*#{post}"
          end
        @search
          .search(query, :namespace_concept, nil, nil, size: 200)
          .sort { |match1, match2|
            L.distance(string_literal.downcase, match1.pref_label.downcase) <=>
            L.distance(string_literal.downcase, match2.pref_label.downcase)
          }
          .map { |match|
            ns = @namespaces.find(match.scheme_uri).first
            if ns
              [ns.prefix.first.upcase, match.pref_label]
            else
              nil
            end
          }
          .compact
          .take(20)
      end
    end

    class MergeCompletion
      include ::AST::Processor::Mixin

      def initialize(completion_node)
        @completion_node = completion_node
        @target_type     = completion_node.type
        @range_start     = completion_node.range_start
      end

      def handler_missing(node)
        if node.type == @target_type && node.range_start == @range_start
          node = @completion_node
        end

        node.updated(
          node.children.map { |n|
            if n.respond_to?(:type)
              process(n)
            else
              n
            end
          }
        )
      end
    end
  end
end

if __FILE__ == $0
  require 'bel_parser'
  require 'bel'
  include BELParser::Parsers::AST::Sexp

  #spec   = BELParser::Language.specification('2.0')
  #search = BEL::Resource::Search.plugins[:sqlite].create_search(
    #:database_file => '/home/tony/projects/openbel/openbel-api/data/rdf_resources.db'
  #)

  #caret_position = ARGV.shift

  puts "Ready."
  #$stdin.each_line do |line|
    #line.strip!
    #puts search.search(line, :namespace_concept, nil, nil, size: 10).to_a.map(&:to_h)
  #end

  #$stdin.each_line do |line|
    #line.strip!
    #puts BELParser::Completion.complete(line, spec, search, caret_position.to_i)
  #end

  ast = BELParser::Parsers::Expression::StatementAutocomplete.parse('bp()')
  puts BELParser::Completion::MergeCompletion.new(
    argument(
      parameter(
        prefix(
          identifier(
            "HGNC")),
        value(
          identifier(
            "AKT1"))),
      character_range: [3,3])
  ).process(ast)
end
# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
