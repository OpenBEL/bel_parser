module BEL
  module Language
    # Specification defines the common behavior of any language specification.
    # It includes the syntactic and semantic rules of the language.
    module Specification
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
      protected :index_functions
    end
  end
end
