module BELParser
  module Language
    # Specification defines the common behavior of any language specification.
    # It includes the syntactic and semantic rules of the language.
    module Specification
      EMPTY_ARRAY = [].freeze

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

      def causal_relationships
        @causal_relationships || EMPTY_ARRAY
      end

      def correlative_relationships
        @correlative_relationships || EMPTY_ARRAY
      end

      def decreasing_relationships
        @decreasing_relationships || EMPTY_ARRAY
      end

      def deprecated_relationships
        @deprecated_relationships || EMPTY_ARRAY
      end

      def direct_relationships
        @direct_relationships || EMPTY_ARRAY
      end

      def directed_relationships
        @directed_relationships || EMPTY_ARRAY
      end

      def genomic_relationships
        @genomic_relationships || EMPTY_ARRAY
      end

      def increasing_relationships
        @increasing_relationships || EMPTY_ARRAY
      end

      def indirect_relationships
        @indirect_relationships || EMPTY_ARRAY
      end

      def listable_relationships
        @listable_relationships || EMPTY_ARRAY
      end

      def self_relationships
        @self_relationships || EMPTY_ARRAY
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

      def assign_relationship_categories(relationships)
        relationships.each do |rel|
          rel.methods(false).grep(/(.*?)\?/) do |method_name|
            if rel.method(method_name).call
              category = method_name.to_s.delete('?')
              category_ivar = "@#{category}_relationships".to_sym
              unless instance_variable_defined? category_ivar
                instance_variable_set(category_ivar, [])
              end
              instance_variable_get(category_ivar) << rel
            end
          end
        end
      end
      protected :assign_relationship_categories

      def version
        @version
      end
    end
  end
end
