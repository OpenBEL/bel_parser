require_relative 'function'
require_relative 'specification'

module BELParser
  module Language
    module Version1_0
      # Specification defines the BEL, version 1.0 specification.
      class Specification
        include BELParser::Language::Specification
        def initialize
          @version = '1.0'.freeze
          load_return_types
          load_functions
          load_relationships
          load_syntax
          freeze
        end

        def load_return_types
          # Collect return types
          ret_classes = Version1_0::ReturnTypes.constants.collect do |symbol|
            const = Version1_0::ReturnTypes.const_get(symbol)
            const if const.respond_to?(:subtypes)
          end
          @return_types         = ret_classes.compact
          @indexed_return_types = index_sym(@return_types)
        end

        def load_functions
          # Collect functions
          function_classes = Version1_0::Functions.constants.collect do |symbol|
            const = Version1_0::Functions.const_get(symbol)
            const if
              const.respond_to?(:short) &&
              const.respond_to?(:long)
          end
          @functions         = function_classes.compact
          @indexed_functions = index_long_short(@functions)
        end

        def load_relationships
          # Collect relationships
          rel_classes = Version1_0::Relationships.constants.collect do |symbol|
            const = Version1_0::Relationships.const_get(symbol)
            const if
              const.respond_to?(:short) &&
              const.respond_to?(:long)
          end
          @relationships         = rel_classes.compact
          @indexed_relationships = index_long_short(@relationships)
        end

        def load_syntax
          # Collect syntax checkers.
          syntax_classes = Version1_0::Syntax.constants.collect do |symbol|
            const = Version1_0::Syntax.const_get(symbol)
            const if const.respond_to?(:match)
          end
          @syntax = syntax_classes.compact
        end
      end
    end
  end
end

# Require all version 1.0 return types
Dir[
  File.join(
    File.dirname(File.expand_path(__FILE__)),
    'version1_0', 'return_types', '*.rb')
].each do |path|
  require_relative "version1_0/return_types/#{File.basename(path)}"
end

# Require all version 1.0 functions.
Dir[
  File.join(
    File.dirname(File.expand_path(__FILE__)),
    'version1_0', 'functions', '*.rb')
].each do |path|
  require_relative "version1_0/functions/#{File.basename(path)}"
end

# Require all version 1.0 relationships.
Dir[
  File.join(
    File.dirname(File.expand_path(__FILE__)),
    'version1_0', 'relationships', '*.rb')
].each do |path|
  require_relative "version1_0/relationships/#{File.basename(path)}"
end

# Require all version 1.0 syntax checkers.
Dir[
  File.join(
    File.dirname(File.expand_path(__FILE__)),
    'version1_0', 'syntax', '*.rb')
].each do |path|
  require_relative "version1_0/syntax/#{File.basename(path)}"
end
