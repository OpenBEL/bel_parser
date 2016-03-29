require_relative 'function'
require_relative 'specification'

Dir[
  File.join(
    File.dirname(File.expand_path(__FILE__)),
    'version10', 'functions', '*.rb')
].each do |function_path|
  require_relative "version10/functions/#{File.basename(function_path)}"
end

module BEL
  module Language
    module Version10
      # Version10Specification defines the BEL, version 1.0 specification.
      class Version10Specification < BEL::Language::Specification
        def initialize
          super(create_functions)
        end

        def create_functions
          function_classes = Version10.constants.collect do |symbol|
            const = Version10.const_get(symbol)
            const if
              const.respond_to?(:include?) &&
              const.include?(BEL::Language::Function)
          end
          function_classes.compact.map(&:new)
        end
        private :create_functions
      end
    end
  end
end
