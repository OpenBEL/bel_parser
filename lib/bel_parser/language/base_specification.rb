require_relative 'specification'

module BELParser
  module Language
    class BaseSpecification
      include Specification

      def self.load_version_path(version_path)
        base_path = File.expand_path(File.dirname(__FILE__)) + File::SEPARATOR
				Dir[File.join(base_path, version_path, '**', '*.rb')].each do |ruby_file|
          ruby_file.sub!(/^#{Regexp.escape(base_path)}/, '')
					require_relative ruby_file
				end
      end

      protected

      def load_language_constants(version_module)
				load_return_types(version_module)
				load_value_encodings(version_module)
				load_functions(version_module)
				load_relationships(version_module)
			end

      private

			def load_return_types(version_module)
				# Collect return types
				ret_classes = version_module::ReturnTypes.constants.collect do |symbol|
					const = version_module::ReturnTypes.const_get(symbol)
					const if const.respond_to?(:subtypes)
				end
				@return_types         = ret_classes.compact
				@indexed_return_types = index_sym(@return_types)
			end

			def load_value_encodings(version_module)
				# Collect value encodings
				enc_classes = version_module::ValueEncodings.constants.collect do |symbol|
					const = version_module::ValueEncodings.const_get(symbol)
					const if const.respond_to?(:subtypes)
				end
				@value_encodings         = enc_classes.compact
				@indexed_value_encodings = index_sym(@value_encodings)
			end

			def load_functions(version_module)
				# Collect functions
				function_classes = version_module::Functions.constants.collect do |symbol|
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
				rel_classes = version_module::Relationships.constants.collect do |symbol|
					const = version_module::Relationships.const_get(symbol)
					const if
						const.respond_to?(:short) &&
						const.respond_to?(:long)
				end
				@relationships         = rel_classes.compact
				@indexed_relationships = index_long_short(@relationships)
				assign_relationship_categories(@relationships)
			end
    end
  end
end
