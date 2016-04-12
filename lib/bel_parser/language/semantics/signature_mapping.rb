require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Semantics
      # SignatureMapping implements a {SemanticsFunction} that maps a
      # {BELParser::Parsers::AST::Node} to {SemanticsResult} by checking each
      # {BELParser::Language::Signature signature} for the
      # {BELParser::Language::Function}.
      #
      # @see BELParser::Language::Function#signatures
      class SignatureMapping
        include SemanticsFunction

        private_class_method :new

        # Map {BELParser::Parsers::AST::Term term} to BEL signatures defined
        # by a {BELParser::Language::Specification}. The mapping includes both
        # successful and failed signature matches.
        def self.map(term_node, spec, _namespaces)
          return nil unless term_node.is_a?(BELParser::Parsers::AST::Term)

          function_name = term_node.function.identifier.string_literal
          function      = spec.function(function_name.to_sym)
          match         = BELParser::Language::Semantics.method(:match)

          successes, failures = function.signatures
                                        .map       { |sig| [sig, match.call(term_node, sig.semantic_ast, spec)] }
                                        .partition { |(_sig, results)| results.all?(&:success?) }

          if successes.empty?
            SignatureMappingWarning.new(term_node, spec, failures)
          else
            SignatureMappingSuccess.new(term_node, spec, successes, failures)
          end
        end
      end

      # SignatureMappingSuccess defines a {SemanticsResult} that indicates
      # a successful signature match.
      class SignatureMappingSuccess < SemanticsResult
        attr_reader :success_signatures
        attr_reader :failure_signatures

        def initialize(term_node, spec, successes, failures)
          super(term_node, spec)
          @success_signatures = successes
          @failure_signatures = failures
        end

        def to_s
          sig_list = success_signatures
                     .map { |(sig, _results)| sig.string_form }
                     .join("\n  ")
          <<-MSG.gsub(/ {12}/, '').gsub(/\n$/, '')
            Term matches function signatures:
              #{sig_list}
          MSG
        end
      end

      # SignatureMappingWarning defines a {SemanticsResult} that indicates
      # an unsuccessful signature match.
      class SignatureMappingWarning < SemanticsWarning
        attr_reader :failure_signatures

        def initialize(term_node, spec, failure_signatures)
          super(term_node, spec)
          @failure_signatures = failure_signatures
        end

        def to_s
          sig_list = failure_signatures
                     .map { |(sig, _results)| sig.string_form }
                     .join("\n  ")
          <<-MSG.gsub(/ {12}/, '').gsub(/\n$/, '')
            Term did not conform to function signatures:
              #{sig_list}
          MSG
        end
      end
    end
  end
end
