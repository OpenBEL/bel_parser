module AST
  # Override to return {BELParser::Parsers::AST::Node} from Sexp shortcut.
  module Sexp
    def s(type, *children)
      BELParser::Parsers::AST::Node.new(type, children)
    end
  end
end
