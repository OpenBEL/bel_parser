module BEL
  module Language
    # Specification defines the common behavior of any language specification.
    # It includes the syntactic and semantic rules of the language.
    module Specification
      def function(short_or_long_form)
        @indexed_functions[short_or_long_form]
      end

      def return_type(return_type)
        @indexed_return_types[return_type]
      end

      def functions(*short_or_long_form)
        if short_or_long_form.empty?
          @functions
        else
          @indexed_functions.values_at(*short_or_long_form)
        end
      end

      def return_types(*return_types)
        if return_types.empty?
          @return_types
        else
          @indexed_return_types.values_at(*return_types)
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

      def index_return_types(return_types)
        Hash[
          return_types.map do |return_type|
            [return_type.to_sym, return_type]
          end
        ]
      end
      protected :index_return_types
    end
  end
end
