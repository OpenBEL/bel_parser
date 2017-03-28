require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Semantics
      # SignatureMapping implements a {SemanticsFunction} that maps
      # a {BELParser::Parsers::AST::Node} to {SemanticsResult} by
      # checking each {BELParser::Language::Signature signature} for
      # the {BELParser::Language::Function}.
      #
      # @see BELParser::Language::Function#signatures
      class SignatureMapping
        include SemanticsFunction

        private_class_method :new

        # Map {BELParser::Parsers::AST::Term term} to BEL signatures
        # defined by a {BELParser::Language::Specification}. The mapping
        # includes both successful and failed signature matches.
        def self.map(term_node, spec, _namespaces, will_match_partial = false)
          return nil unless term_node.is_a?(BELParser::Parsers::AST::Term)
          return nil unless term_node.function
          return nil unless term_node.function.identifier

          # double negate truthy or falsey value to strict boolean
          will_match_partial = !!will_match_partial

          function_name = term_node.function.identifier.string_literal
          function      = spec.function(function_name.to_sym)
          return nil unless function

          function.signatures.map { |signature|
            self._map_signature(term_node, spec, signature, will_match_partial)
          }
        end

        private

        def self._map_signature(term_node, spec, signature, will_match_partial)
          results = BELParser::Language::Semantics.match(
            term_node,
            signature.semantic_ast,
            spec)

          if will_match_partial and term_node.arguments.empty?
            _remove_partial_warnings!(results)
          end

          if results.all?(&:success?)
            SignatureMappingSuccess.new(term_node, spec, signature, results)
          else
            SignatureMappingWarning.new(term_node, spec, signature, results)
          end
        end

        def self._remove_partial_warnings!(semantic_results)
          semantic_results.reject! { |res|
            res.is_a?(SemanticsNilNodeWarning) || res.is_a?(SemanticsArgumentLengthWarning)
          }
        end
      end

      # SignatureMappingSuccess defines a {SemanticsResult} that indicates
      # a successful signature match.
      class SignatureMappingSuccess < SemanticsResult
        attr_reader :signature
        attr_reader :results

        def initialize(term_node, spec, signature, results)
          super(term_node, spec)
          @signature = signature
          @results   = results
        end

        def to_s
          <<-MSG.gsub(/ {12}/, '').gsub(/\n$/, '')
            Term matched function signature: #{@signature.string_form}
          MSG
        end
      end

      # SignatureMappingWarning defines a {SemanticsWarning} that indicates
      # an unsuccessful signature match.
      class SignatureMappingWarning < SemanticsWarning
        attr_reader :signature
        attr_reader :results

        def initialize(term_node, spec, signature, results)
          super(term_node, spec)
          @signature = signature
          @results   = results
        end

        def to_s
          <<-MSG.gsub(/ {12}/, '').gsub(/\n$/, '')
            Term did not match function signature: #{@signature.string_form}
          MSG
        end
      end
    end
  end
end
