require_relative 'function'
require_relative 'specification'

Dir[
  File.join(
    File.dirname(File.expand_path(__FILE__)),
    'version1', 'functions', '*.rb')
].each do |function_path|
  require_relative "version1/functions/#{File.basename(function_path)}"
end

module BEL
  module Language
    module Version1
      # Version1Specification defines the BEL, version 1.0 specification.
      class Specification
        include BEL::Language::Specification
        def initialize
          function_classes = Version1.constants.collect do |symbol|
            const = Version1.const_get(symbol)
            const if
              const.respond_to?(:include?) &&
              const.include?(BEL::Language::Function)
          end
          @functions = function_classes.compact.map(&:new)
          @indexed_functions = index_functions(@functions)
        end
      end
    end
  end
end
