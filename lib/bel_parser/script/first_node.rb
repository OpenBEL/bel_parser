module BELParser
  module Script
    # FirstNode will return the first node from the set of
    # {BELParser::Parsers::AST::Node AST nodes} provided.
    class FirstNode
      def initialize(ast_enum)
        @ast_enum = ast_enum
      end

      def each
        if block_given?
          @ast_enum.each do |(line_number, line, ast_nodes)|
            yield [line_number, line, ast_nodes.first]
          end
        else
          enum_for(:each)
        end
      end
    end
  end
end
