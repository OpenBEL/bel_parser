module BELParser
  module Language
    # Signature defines the interface for language-specific signatures used
    # to check expression semantics.
    module Signature
      include Comparable

      def semantic_ast
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def string_form
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def size
        count = 0
        nodes = [semantic_ast]
        until nodes.empty?
          n = nodes.shift
          if n
            count += 1
            nodes.concat(n.children) if n.respond_to?(:children)
          end
        end
        count
      end

      def <=>(other)
        return 1 if other.nil?
        size <=> other.size
      end

      def to_s
        string_form
      end
    end
  end
end
