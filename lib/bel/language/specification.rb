module BEL
  module Language
    # Specification provides a definition of the language. It includes the
    # functions, relationships, and expansion semantics.
    class Specification
      def initialize(functions)
        @functions         = functions.freeze
        @indexed_functions = index_functions(@functions)
      end

      def function(short_or_long_form)
        @indexed_functions[short_or_long_form]
      end

      def functions(*short_or_long_form)
        if short_or_long_form.empty?
          @functions
        else
          @indexed_functions.values_at(*short_or_long_form)
        end
      end

      def index_functions(functions)
        Hash[
          functions.flat_map do |function|
            [[function.short, function], [function.long, function]]
          end
        ]
      end
      private :index_functions
    end
  end
end
