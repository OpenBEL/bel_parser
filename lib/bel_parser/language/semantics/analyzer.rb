require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Semantics
      # Recursively apply function semantics to each term.
      # AST Term Property = :function_semantics
      def self.apply_function_semantics(term, spec)
        unless term.is_a?(BELParser::Parsers::AST::Term)
          raise ArgumentError, "term_ast: expected BELParser::Parsers::AST::Term"
        end

        function_name = term.function.identifier.string_literal
        function      = spec.function(function_name.to_sym)

        valid_signature =
          function.signatures.select do |sig|
            match(term, sig.semantic_ast, spec).all?(&:success?)
          end.max
        if valid_signature
          term.function_semantics = valid_signature
          term.arguments.select(&:has_term?).map(&:child).each do |term|
            apply_function_semantics(term, spec)
          end
        else
          nullify_function_semantics(term)
        end
      end

      def self.nullify_function_semantics(term)
        unless term.is_a?(BELParser::Parsers::AST::Term)
          raise ArgumentError, "term_ast: expected BELParser::Parsers::AST::Term"
        end

        term.function_semantics = nil
        term.arguments.select(&:has_term?).map(&:child).each do |term|
          nullify_function_semantics(term)
        end
      end

      def self.check_term(term, spec)
        unless term.is_a?(BELParser::Parsers::AST::Term)
          raise ArgumentError, "term_ast: expected BELParser::Parsers::AST::Term"
        end

        apply_function_semantics(term, spec)

        semantics = []
        terms     = [term]
        while !terms.empty? do
          term = terms.shift
          semantics << term.function_semantics
          terms.concat(term.arguments.select(&:has_term?).map(&:child))
        end
        semantics
      end
    end
  end
end
