require_relative 'semantics_match'
require_relative 'semantics_ast'
require_relative 'semantics_result'
require_relative 'semantics_warning'
require_relative 'semantics_function'

module BELParser
  module Language
    # Semantics module aggregates the generic {SemanticsFunction}
    # implementations that apply to all
    # {BELParser::Language::Specification BEL specifications}.
    module Semantics
      def self.semantics_functions
        constants.collect do |symbol|
          const = const_get(symbol)
          const if
            const.respond_to?(:include?) &&
            const.include?(SemanticsFunction)
        end.compact
      end

      # Valid defines a {SemanticsResult} that indicates successful semantic
      # validation.
      class Valid < SemanticsResult
        def msg
          'Semantics are valid.'
        end
      end
    end
  end
end

# Require all semantics functions.
Dir[
  File.join(
    File.dirname(File.expand_path(__FILE__)),
    'semantics', '*.rb')
].each do |path|
  require_relative "semantics/#{File.basename(path)}"
end
