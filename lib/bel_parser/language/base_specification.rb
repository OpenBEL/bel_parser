require_relative 'specification'

module BELParser
  module Language
    # BaseSpecification defines behaviour for loading BEL version files.
    class BaseSpecification
      include Specification

      def self.load_version_path(version_path)
        base_path = File.expand_path(File.dirname(__FILE__)) + File::SEPARATOR
        ['return_types', 'value_encodings', 'functions', 'relationships', 'upgrades']
          .each do |set|
            Dir[File.join(base_path, version_path, set, '*.rb')]
              .each do |ruby_file|
                ruby_file.sub!(/^#{Regexp.escape(base_path)}/, '')
                require_relative ruby_file
              end
          end
      end

      protected

      def load_language_constants(version_module)
        load_return_types(version_module)
        load_value_encodings(version_module)
        load_functions(version_module)
        load_relationships(version_module)
        load_upgrades(version_module)
      end

      private

      def load_return_types(version_module)
        # Collect return types
        ret_classes =
          version_module::ReturnTypes.constants.collect do |symbol|
            const = version_module::ReturnTypes.const_get(symbol)
            const if const.respond_to?(:subtypes)
          end
        @return_types         = ret_classes.compact
        @indexed_return_types = index_sym(@return_types)
      end

      def load_value_encodings(version_module)
        # Collect value encodings
        enc_classes =
          version_module::ValueEncodings.constants.collect do |symbol|
            const = version_module::ValueEncodings.const_get(symbol)
            const if const.respond_to?(:subtypes)
          end
        @value_encodings         = enc_classes.compact
        @indexed_value_encodings = index_sym(@value_encodings)
      end

      def load_functions(version_module)
        # Collect functions
        function_classes =
          version_module::Functions.constants.collect do |symbol|
            const = version_module::Functions.const_get(symbol)
            const if
              const.respond_to?(:short) &&
              const.respond_to?(:long)
          end
        @functions         = function_classes.compact
        @indexed_functions = index_long_short(@functions)
      end

      def load_relationships(version_module)
        # Collect relationships
        rel_classes =
          version_module::Relationships.constants.collect do |symbol|
            const = version_module::Relationships.const_get(symbol)
            const if
              const.respond_to?(:short) &&
              const.respond_to?(:long)
          end
        @relationships         = rel_classes.compact
        @indexed_relationships = index_long_short(@relationships)
        assign_relationship_categories(@relationships)
      end

      def load_upgrades(version_module)
        # Collect upgrades
        upgrade_classes =
          version_module::Upgrades.constants.collect do |symbol|
            const = version_module::Upgrades.const_get(symbol)
            const if
              const.include?(BELParser::Language::TermTransformation)
          end
        @upgrades = upgrade_classes.compact
      end
    end
  end
end
