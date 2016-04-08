module BELParser
  module Language
    # Specification defines the common behavior of any language specification.
    # It includes the syntactic and semantic rules of the language.
    module Specification
      def function(short_or_long_form)
        @indexed_functions[short_or_long_form]
      end

      def relationship(short_or_long_form)
        @indexed_relationships[short_or_long_form]
      end

      def return_type(return_type)
        @indexed_return_types[return_type]
      end

      def functions(*short_or_long_form)
        if short_or_long_form.empty?
          @functions.freeze
        else
          @indexed_functions.values_at(*short_or_long_form)
        end
      end

      def relationships(*short_or_long_form)
        if short_or_long_form.empty?
          @relationships.freeze
        else
          @indexed_relationships.values_at(*short_or_long_form)
        end
      end

      def return_types(*return_types)
        if return_types.empty?
          @return_types.freeze
        else
          @indexed_return_types.values_at(*return_types)
        end
      end

      def syntax
        @syntax
      end

      # @param [Array<#long,#short>] language_objects to be indexed by
      # +long+ and +short+ method return
      def index_long_short(language_objects)
        Hash[
          language_objects.flat_map do |obj|
            [[obj.short, obj], [obj.long, obj]]
          end
        ]
      end
      protected :index_long_short

      # @param [Array<#to_sym>] language_objects to be indexed by
      # +to_sym+ method return
      def index_sym(language_objects)
        Hash[
          language_objects.map do |obj|
            [obj.to_sym, obj]
          end
        ]
      end
      protected :index_sym
    end
  end
end
