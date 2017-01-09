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
        def self.map(term_node, spec, _namespaces)
          return nil unless term_node.is_a?(BELParser::Parsers::AST::Term)
          return nil unless term_node.function

          function_name = term_node.function.identifier.string_literal
          function      = spec.function(function_name.to_sym)
          return nil unless function

          mapsig = method(:map_signature).to_proc.curry[term_node][spec]
          function.signatures.map(&mapsig)
        end

        def self.map_signature(term_node, spec, signature)
          results = BELParser::Language::Semantics.match(
            term_node,
            signature.semantic_ast,
            spec)
          if results.all?(&:success?)
            SignatureMappingSuccess.new(term_node, spec, signature, results)
          else
            SignatureMappingWarning.new(term_node, spec, signature, results)
          end
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
