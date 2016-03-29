require 'ast'

module AST
  # Override to return {BEL::Parsers::AST::Node} from Sexp shortcut.
  module Sexp
    def s(type, *children)
      BEL::Parsers::AST::Node.new(type, children)
    end
  end
end
