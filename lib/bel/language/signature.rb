module BEL
  module Language
    # Signature defines the interface for language-specific signatures used
    # to check expression semantics.
    module Signature
      def semantic_ast
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def string_form
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def to_s
        string_form
      end
    end
  end
end
