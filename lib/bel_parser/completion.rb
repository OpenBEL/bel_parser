require 'bel_parser/parsers/expression/statement_autocomplete'
require 'bel_parser/parsers/serializer'
require_relative 'mixin/levenshtein'
require 'pry'

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
      ast = BELParser::Parsers::Expression::StatementAutocomplete.parse(input)
      puts "parsed AST:"
      puts ast.to_sexp(1)

      completing_node = find_node(ast, caret_position)
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
            completion: completion,
            caret_position: fx_name.length + 1
          }
        }
      else
        []
      end
    end

    def self.find_node(ast, caret_position)
      ast.traverse do |node|
        next unless node.respond_to?(:type)
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
  end
end

if __FILE__ == $0
  require 'bel_parser'
  require 'bel'

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

  spec   = BELParser::Language.specification('2.0')
  search = BEL::Resource::Search.plugins[:sqlite].create_search(
    :database_file => '/home/tony/projects/openbel/openbel-api/data/rdf_resources.db'
  )

  caret_position = ARGV.shift

  puts "Ready."
  #$stdin.each_line do |line|
    #line.strip!
    #puts search.search(line, :namespace_concept, nil, nil, size: 10).to_a.map(&:to_h)
  #end

  $stdin.each_line do |line|
    line.strip!
    puts BELParser::Completion.complete(line, spec, search, caret_position.to_i)
  end
end
# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
