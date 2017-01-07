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

      # TODO [x] 1. Pass caret_position to StatementAutocomplete; adjust if spaces removed before caret position.
      #      e.g. p(HGNC:AKT1, |)  - here we should subtract 1 from caret_position since we drop the space.
      # TODO [x] 2. Make sure all prefix, value, and parameter completions all work.
      # TODO [x] 3. Work on a term stack within StatementAutocomplete.
      # TODO 4. Add inner term completion for argument or value matching function.
      # TODO 5. Make inner term completions work.
      # TODO 6. Complete outer term to subject.
      # TODO 7. Complete relationship.
      # TODO 8. Complete object.
      ast, caret_position = BELParser::Parsers::Expression::StatementAutocomplete.parse(input, caret_position)
      puts "parsed AST:"
      puts ast.to_sexp(1)
      puts "caret: #{caret_position}"

      completing_node = find_node(ast, caret_position)
      return [] unless completing_node

      puts "completing_node: #{completing_node}"
      case completing_node.type
      when :parameter
        prefix, value = completing_node.children

        # If the caret is within a non-nil value and the prefix is nil then we try three
        # things.
        #   [x] first find functions that match
        #   [x] second find namespace prefixes that match
        #   [x] wildcard search across all namespaces according to before, within, around positioning
        #     (completion for namespace_value should include surrounding parentheses with caret at 0)
        #     (this will allow completion of function name, according to semantics)
        #
        # If the caret is within a non-nil prefix then complete for namespace prefix.
        #
        # If we have a namespace value then
        #   lookup exact value in namespace
        #     if one was found, return terms with functions that take the value's encoding
        #     else do a wildcard search for value in namespace according to before, within, around positioning
        #

        # Completing prefix
        if Range.new(*prefix.character_range, false).include?(caret_position)
          puts "#{completing_node.type}: within prefix range"
          if prefix.identifier.nil?
            puts "...prefix is nil, complete all namespace prefixes"
            # Provide all namespace prefix completions.
            all_prefix_completions = AllNamespacePrefixCompleter
              .new(spec, search, namespaces)
              .complete(nil, nil)
              .map { |(bel_prefix, completion_ast)|
                completion_ast.character_range = [
                  prefix.range_start,
                  prefix.range_start + bel_prefix.length + 1
                ]
                completion = serialize(MergeCompletion.new(completion_ast).process(ast))

                {
                  type:           :namespace_prefix,
                  id:             bel_prefix,
                  label:          bel_prefix,
                  value:          completion,
                  # e.g. p({rs}HGNC{pxl}:{1}
                  caret_position: completing_node.range_start + bel_prefix.length + 1
                }
              }

            all_prefix_completions
          else
            # Match provided namespace prefix.
            string_literal = prefix.identifier.string_literal
            puts "...prefix is #{string_literal}, complete to matching namespace prefixes"

            prefix_completions = NamespacePrefixCompleter
              .new(spec, search, namespaces)
              .complete(string_literal, caret_position)
              .map { |(bel_prefix, completion_ast)|
                completion_ast.character_range = [
                  prefix.range_start,
                  prefix.range_start + bel_prefix.length + 1
                ]
                completion = serialize(MergeCompletion.new(completion_ast).process(ast))

                {
                  type:           :namespace_prefix,
                  id:             bel_prefix,
                  label:          bel_prefix,
                  value:          completion,
                  # e.g. p({rs}HGNC{pxl}:{1}
                  caret_position: completing_node.range_start + bel_prefix.length + 1
                }
              }

            prefix_completions
          end
        else
          puts "#{completing_node.type}: within value range"
          string_literal = value.string_literal

          puts "...complete functions for #{string_literal}"
          function_completions = FunctionTermCompleter
            .new(spec, search, namespaces)
            .complete(string_literal, caret_position)
            .map { |(function, completion_ast)|
              short      = function.short.to_s
              long       = function.long.to_s
              completion = serialize(completion_ast)
              {
                type:           :function,
                id:             long,
                label:          long,
                value:          completion,
                caret_position: short.length + 1
              }
            }

          puts "...complete prefixes for #{string_literal}"
          prefix_completions = NamespacePrefixArgumentCompleter
            .new(spec, search, namespaces)
            .complete(string_literal, nil)
            .map { |(bel_prefix, completion_ast)|
              completion = serialize(completion_ast)

              {
                type:           :namespace_prefix,
                id:             bel_prefix,
                label:          bel_prefix,
                value:          completion,
                # e.g. p({rs}HGNC{pxl}:{1}
                caret_position: completing_node.range_start + bel_prefix.length + 1
              }
            }

          puts "...complete parameters for #{string_literal}"
          namespace_value_completions = ParameterCompleter
            .new(spec, search, namespaces)
            .complete(string_literal, caret_position - value.range_start, prefix: nil)
            .map { |(ns_value, completion_ast)|
              completion = "(#{serialize(completion_ast)})"

              {
                type:           :namespace_value,
                id:             ns_value,
                label:          ns_value,
                value:          completion,
                caret_position: 0
              }
            }

          function_completions + prefix_completions + namespace_value_completions
        end
      when :function
        string_literal =
          if completing_node.identifier.nil?
            ''
          else
            completing_node.identifier.string_literal
          end

        puts "#{completing_node.type}: complete functions for #{string_literal}"
        function_completions = FunctionCompleter
          .new(spec, search, namespaces)
          .complete(string_literal, caret_position)
          .map { |(function, completion_ast)|
            short      = function.short.to_s
            long       = function.long.to_s

            completion_ast.character_range = [
              completing_node.range_start,
              completing_node.range_start + short.length
            ]
            completion = serialize(MergeCompletion.new(completion_ast).process(ast))

            {
              type:           :function,
              id:             long,
              label:          long,
              value:          completion,
              caret_position: short.length + 1
            }
          }

        function_completions
      when :argument
        if completing_node.child.nil?
          puts "#{completing_node.type}: child is nil"
          # TODO Ultimately these should be filtered by semantics.

          puts "...complete to all namespace prefixes"
          all_prefix_completions = AllNamespacePrefixArgumentCompleter
            .new(spec, search, namespaces)
            .complete(nil, nil)
            .map { |(bel_prefix, completion_ast)|
              completion_ast.character_range = completing_node.character_range
              completion = serialize(MergeCompletion.new(completion_ast).process(ast))

              {
                type:           :namespace_prefix,
                id:             bel_prefix,
                label:          bel_prefix,
                value:          completion,
                # e.g. p({rs}HGNC{pxl}:{1}
                caret_position: completing_node.range_start + bel_prefix.length + 1
              }
            }

          puts "...complete to all functions"
          all_function_completions = AllFunctionArgumentCompleter
            .new(spec, search, namespaces)
            .complete(string_literal, caret_position)
            .map { |(function, completion_ast)|
              short = function.short.to_s
              long  = function.long.to_s

              completion_ast.character_range = [
                completing_node.range_start,
                completing_node.range_start + short.length
              ]
              completion = serialize(MergeCompletion.new(completion_ast).process(ast))

              {
                type:           :function,
                id:             long,
                label:          long,
                value:          completion,
                caret_position: short.length + 1
              }
            }

          all_prefix_completions + all_function_completions
        elsif completing_node.parameter?
          puts "#{completing_node.type}: child is a parameter"
          parameter     = completing_node.child
          prefix, value = parameter.children

          if Range.new(*prefix.character_range, false).include?(caret_position)
            prefix_str = prefix.identifier.string_literal
            puts "...within prefix range, completing namespace prefixes that match #{prefix_str}"

            prefix_completions = NamespacePrefixArgumentCompleter
              .new(spec, search, namespaces)
              .complete(prefix_str, nil)
              .map { |(bel_prefix, completion_ast)|
                completion_ast.character_range = completing_node.character_range
                completion = serialize(MergeCompletion.new(completion_ast).process(ast))

                {
                  type:           :namespace_prefix,
                  id:             bel_prefix,
                  label:          bel_prefix,
                  value:          completion,
                  # e.g. p({rs}HGNC{pxl}:{1}
                  caret_position: completing_node.range_start + bel_prefix.length + 1
                }
              }

            prefix_completions
          else
            # completing value of parameter
            value_str = value.first_child.string_literal
            puts "...completing #{value_str} within value range"

            prefix_string      = nil
            prefix_completions =
              if prefix && prefix.identifier
                # ... prefix exists, store it for later value lookup
                prefix_string = prefix.identifier.string_literal
                puts "...prefix set as #{prefix_string}"
                []
              else
                # ... prefix is nil, try to complete it, lookup values later without prefix
                prefix_string = nil
                puts "...prefix is nil"

                puts "...completing namespace prefixes for #{value_str}"
                NamespacePrefixArgumentCompleter
                  .new(spec, search, namespaces)
                  .complete(value_str, nil)
                  .map { |(bel_prefix, completion_ast)|
                    completion_ast.character_range = completing_node.character_range
                    completion = serialize(MergeCompletion.new(completion_ast).process(ast))

                    {
                      type:           :namespace_prefix,
                      id:             bel_prefix,
                      label:          bel_prefix,
                      value:          completion,
                      # e.g. p({rs}HGNC{pxl}:{1}
                      caret_position: completion_ast.range_start + bel_prefix.length + 1
                    }
                  }
              end

            puts "...completing functions for #{value_str}"
            function_completions = FunctionArgumentCompleter
              .new(spec, search, namespaces)
              .complete(value_str, caret_position)
              .map { |(function, completion_ast)|
                short = function.short.to_s
                long  = function.long.to_s

                completion_ast.character_range = [
                  completing_node.range_start,
                  completing_node.range_start + short.length
                ]
                completion = serialize(MergeCompletion.new(completion_ast).process(ast))

                {
                  type:           :function,
                  id:             long,
                  label:          long,
                  value:          completion,
                  caret_position: short.length + 1
                }
              }

            puts "...completing parameters for #{value_str}, prefix is #{prefix_string}"
            parameter_completions = ParameterCompleter
              .new(spec, search, namespaces)
              .complete(value_str, caret_position - value.range_start, prefix: prefix_string)
              .map { |(ns_value, completion_ast)|
                completion_ast.character_range = completing_node.character_range
                completion = serialize(MergeCompletion.new(completion_ast).process(ast))

                {
                  type:           :namespace_value,
                  id:             ns_value,
                  label:          ns_value,
                  value:          completion,
                  caret_position: value.range_start + ns_value.length
                }
              }

            prefix_completions + function_completions + parameter_completions
          end
        else
          # TODO Completing term argument, will we ever get here?
          puts "#{completing_node.type}: child is a term, who do we proceed"
        end
      else
        []
      end
    end

    def self.find_node(ast, caret_position)
      ast.traverse do |node|
        next if
          node.type == :term ||
          caret_position < node.range_start ||
          caret_position > node.range_end

        case node.type
        when :argument
          return node if node.child.nil? || node.parameter?
        when :parameter, :function
          return node
        end
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
        @spec.functions
          .select { |function| function =~ pattern }
          .map    { |function|
            make_completion(function)
          }
      end

      protected

      def make_completion(function)
        [
          function,
          function(
            identifier(
              function.short.to_s))
        ]
      end
    end

    class FunctionTermCompleter < FunctionCompleter

      def make_completion(function)
        [
          function,
          term(
            function(
              identifier(
                function.short.to_s)))
        ]
      end
    end

    class FunctionArgumentCompleter < FunctionCompleter

      def make_completion(function)
        [
          function,
          argument(
            term(
              function(
                identifier(
                  function.short.to_s))))
        ]
      end
    end

    class AllFunctionCompleter < BaseCompleter

      def complete(_, _)
        @spec.functions
          .map { |function|
            make_completion(function)
          }
      end

      protected

      def make_completion(function)
        [
          function,
          function(
            identifier(
              function.short.to_s))
        ]
      end
    end

    class AllFunctionTermCompleter < AllFunctionCompleter

      def make_completion(function)
        [
          function,
          term(
            function(
              identifier(
                function.short.to_s)))
        ]
      end
    end

    class AllFunctionArgumentCompleter < AllFunctionCompleter

      def make_completion(function)
        [
          function,
          argument(
            term(
              function(
                identifier(
                  function.short.to_s))))
        ]
      end
    end

    class NamespacePrefixCompleter < BaseCompleter

      def complete(string_literal, _)
        lowercase_substring = string_literal.downcase
        @namespaces.each
          .map    { |ns| ns.prefix.first }
          .compact
          .select { |px| px.include?(lowercase_substring) }
          .map    { |px|
            make_completion(px.upcase)
          }
      end

      protected

      def make_completion(bel_prefix)
        [
          bel_prefix,
          prefix(
            identifier(
              bel_prefix))
        ]
      end
    end

    class NamespacePrefixArgumentCompleter < NamespacePrefixCompleter

      def make_completion(prefix)
        [
          prefix,
          argument(
            parameter(
              prefix(
                identifier(
                  prefix)),
              value(
                identifier(
                  ""))))
        ]
      end
    end

    class AllNamespacePrefixCompleter < NamespacePrefixCompleter

      def complete(_, _)
        @namespaces.each
          .map    { |ns| ns.prefix.first }
          .compact
          .map    { |px|
            make_completion(px.upcase)
          }
      end
    end

    class AllNamespacePrefixArgumentCompleter < NamespacePrefixArgumentCompleter

      def complete(_, _)
        @namespaces.each
          .map    { |ns| ns.prefix.first }
          .compact
          .map    { |px|
            make_completion(px.upcase)
          }
      end
    end

    class ParameterCompleter < BaseCompleter
      L = BELParser::Levenshtein

      def complete(string_literal, caret_position, options = {})
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
        puts "query: #{query}"

        # find namespace URI if prefix was provided
        prefix = options[:prefix]
        if prefix
          specified_prefix = prefix.to_s
          matched_namespace =
            @namespaces.each.find { |ns|
              prefix_s = ns.prefix.first
              prefix_s && prefix_s.to_s.casecmp(specified_prefix) == 0
            }
          uri = matched_namespace ? matched_namespace.uri : nil
        else
          uri = nil
        end

        @search
          .search(query, :namespace_concept, uri, nil, size: 200)
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
          .map { |(ns, v)|
            ns_value = nil
            value =
              if !v.scan(/[^\w]/).empty?
                ns_value = %Q{#{ns}:"#{v}"}
                value(
                  string(
                    v))
              else
                ns_value = %Q{#{ns}:#{v}}
                value(
                  identifier(
                    v))
              end

            [
              ns_value,
              argument(
                parameter(
                  prefix(
                    identifier(
                      ns)),
                  value))
            ]
          }
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
