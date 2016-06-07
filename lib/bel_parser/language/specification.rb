module BELParser
  module Language
    # Specification defines the common behavior of any language specification.
    # It includes the syntactic and semantic rules of the language.
    module Specification
      EMPTY_ARRAY = [].freeze

      def uri
        @uri
      end

      def version
        @version
      end

      def function(short_or_long_form)
        @indexed_functions[short_or_long_form]
      end

      def relationship(short_or_long_form)
        @indexed_relationships[short_or_long_form]
      end

      def return_type(return_type)
        @indexed_return_types[return_type]
      end

      def value_encoding(value_encoding)
        @indexed_value_encodings[value_encoding]
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

      def upgrades
        @upgrades.freeze
      end

      attr_reader :causal_relationships
      attr_reader :correlative_relationships
      attr_reader :decreasing_relationships
      attr_reader :deprecated_relationships
      attr_reader :direct_relationships
      attr_reader :directed_relationships
      attr_reader :genomic_relationships
      attr_reader :increasing_relationships
      attr_reader :indirect_relationships
      attr_reader :listable_relationships
      attr_reader :self_relationships

      def return_types(*return_types)
        if return_types.empty?
          @return_types.freeze
        else
          @indexed_return_types.values_at(*return_types)
        end
      end

      def inspect
        "BEL specification, version #@version"
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
              add_relationship_to_category(rel, category)
            end
          end
        end

        freeze_categories
        nil
      end
      protected :assign_relationship_categories

      def add_relationship_to_category(relationship, category)
        category_ivar = "@#{category}_relationships".to_sym
        unless instance_variable_defined? category_ivar
          instance_variable_set(category_ivar, [])
        end
        instance_variable_get(category_ivar) << relationship
      end
      private :add_relationship_to_category

      def freeze_categories
        instance_variables.each do |ivar|
          next unless ivar.to_s =~ /@[a-zA-Z0-9]+_relationships/
          instance_variable_set(ivar, instance_variable_get(ivar).freeze)
        end
      end
    end
  end
end
