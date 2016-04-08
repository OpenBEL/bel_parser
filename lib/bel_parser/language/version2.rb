require_relative 'function'
require_relative 'specification'

module BELParser
  module Language
    module Version2
      # Version2Specification defines the BEL, version 2.0 specification.
      class Specification
        include BELParser::Language::Specification
        def initialize
          # Establish functions
          function_classes = Version2::Functions.constants.collect do |symbol|
            const = Version2::Functions.const_get(symbol)
            const if
              const.respond_to?(:short) &&
              const.respond_to?(:long)
          end
          @functions         = function_classes.compact
          @indexed_functions = index_long_short(@functions)

          # Collect relationships
          rel_classes = Version2::Relationships.constants.collect do |symbol|
            const = Version2::Relationships.const_get(symbol)
            const if
              const.respond_to?(:short) &&
              const.respond_to?(:long)
          end
          @relationships         = rel_classes.compact
          @indexed_relationships = index_long_short(@relationships)

          # Establish return types
          ret_classes = Version2::ReturnTypes.constants.collect do |symbol|
            const = Version2::ReturnTypes.const_get(symbol)
            const if const.respond_to?(:subtypes)
          end
          @return_types         = ret_classes.compact
          @indexed_return_types = index_sym(@return_types)
        end
      end
    end
  end
end

# Require all version 2.0 return types
Dir[
  File.join(
    File.dirname(File.expand_path(__FILE__)),
    'version2', 'return_types', '*.rb')
].each do |path|
  require_relative "version2/return_types/#{File.basename(path)}"
end

# Require all version 2.0 functions.
Dir[
  File.join(
    File.dirname(File.expand_path(__FILE__)),
    'version2', 'functions', '*.rb')
].each do |path|
  require_relative "version2/functions/#{File.basename(path)}"
end

# Require all version 1.0 relationships.
Dir[
  File.join(
    File.dirname(File.expand_path(__FILE__)),
    'version2', 'relationships', '*.rb')
].each do |path|
  require_relative "version2/relationships/#{File.basename(path)}"
end
