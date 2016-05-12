require_relative '../ast_filter'

module BELParser
  module Expression
    # Filter will enumerate {BELParser::Parsers::AST::Node AST nodes} that make
    # up BEL expressions. It selects the relevant nodes
    # from an {BELParser::Parsers::AST::Node AST node} enumerator.
    class Filter
      # Represents BEL expression node types.
      TYPES = [
        :simple_statement,
        :observed_term,
        :nested_statement,
        :term,
        :parameter
      ]

      def initialize(ast_enum)
        @ast_filter = BELParser::ASTFilter.new(ast_enum, *TYPES)
      end

      def each(&block)
        if block_given?
          @ast_filter.each(&block)
        else
          enum_for(:each)
        end
      end
    end

    def self.filter
      BELParser::ASTFilter.new(nil, *Filter::TYPES)
    end

    def self.parameter_filter
      BELParser::ASTFilter.new(
        nil,
        BELParser::Parsers::AST::Parameter.ast_type)
    end

    def self.term_filter
      BELParser::ASTFilter.new(
        nil,
        BELParser::Parsers::AST::Term.ast_type)
    end

    def self.statement_filter
      BELParser::ASTFilter.new(
        nil,
        BELParser::Parsers::AST::SimpleStatement.ast_type,
        BELParser::Parsers::AST::ObservedTerm.ast_type,
        BELParser::Parsers::AST::NestedStatement.ast_type)
    end
  end
end
