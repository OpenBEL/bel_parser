require_relative 'function'
require_relative 'specification'

module BELParser
  module Language
    module Version1
      # Version1Specification defines the BEL, version 1.0 specification.
      class Specification
        include BELParser::Language::Specification
        def initialize
          # Collect return types
          ret_classes = Version1::ReturnTypes.constants.collect do |symbol|
            const = Version1::ReturnTypes.const_get(symbol)
            const if const.respond_to?(:subtypes)
          end
          @return_types = ret_classes.compact
          @indexed_return_types = index_return_types(@return_types)

          # Collect functions
          function_classes = Version1::Functions.constants.collect do |symbol|
            const = Version1::Functions.const_get(symbol)
            const if
              const.respond_to?(:short) &&
              const.respond_to?(:long)
          end
          @functions = function_classes.compact
          @indexed_functions = index_functions(@functions)

          # Collect syntax checkers.
          syntax_classes = Version1::Syntax.constants.collect do |symbol|
            const = Version1::Syntax.const_get(symbol)
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
    'version1', 'return_types', '*.rb')
].each do |path|
  require_relative "version1/return_types/#{File.basename(path)}"
end

# Require all version 1.0 functions.
Dir[
  File.join(
    File.dirname(File.expand_path(__FILE__)),
    'version1', 'functions', '*.rb')
].each do |path|
  require_relative "version1/functions/#{File.basename(path)}"
end

# Require all version 1.0 syntax checkers.
Dir[
  File.join(
    File.dirname(File.expand_path(__FILE__)),
    'version1', 'syntax', '*.rb')
].each do |path|
  require_relative "version1/syntax/#{File.basename(path)}"
end
