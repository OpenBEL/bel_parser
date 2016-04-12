require_relative 'syntax_function'
require_relative 'syntax_error'
require_relative 'syntax_warning'

module BELParser
  module Language
    # Syntax module aggregates the generic {SyntaxFunction}
    # implementations that apply to all
    # {BELParser::Language::Specification BEL specifications}.
    module Syntax
      def self.syntax_functions
        constants.collect do |symbol|
          const = const_get(symbol)
          const if
            const.respond_to?(:include?) &&
            const.include?(SyntaxFunction)
        end.compact
      end

      # Valid defines a {SyntaxResult} that indicates successful syntax
      # validation.
      class Valid < SyntaxResult
        def msg
          'Syntax is valid.'
        end
      end
    end
  end
end

# Require all generic syntax functions.
Dir[
  File.join(
    File.dirname(File.expand_path(__FILE__)),
    'syntax', '*.rb')
].each do |path|
  require_relative "syntax/#{File.basename(path)}"
end
