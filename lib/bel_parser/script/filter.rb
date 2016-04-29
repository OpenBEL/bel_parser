module BELParser
  module Script
    # Filter will enumerate {BELParser::Parsers::AST::Node AST nodes} that are
    # relevant to lines in a BEL Script document. It selects the relevant nodes
    # from an {BELParser::Parsers::AST::Node AST node} enumerator.
    class Filter
      # Represents the BEL Script AST Node type.
      # TODO These could be AST::Node subclasses instead.
      TYPES = [
        :simple_statement,
        :observed_term,
        :nested_statement,
        :annotation_definition,
        :namespace_definition,
        :set,
        :document_property,
        :unset,
        :blank_line,
        :comment_line
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
  end
end
