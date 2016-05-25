require 'bel_parser/language'
require 'bel_parser/language/syntax_function'
require 'bel_parser/language/syntax_error'
require 'bel_parser/parsers/ast/node'
require 'concurrent/hash'

module BELParser
  module Script
    module Syntax
      class InvalidRegexPattern
        extend BELParser::Language::Syntax::SyntaxFunction

        TARGET_NODE = BELParser::Parsers::AST::Pattern

        def self.map(ast_node, script_context)
          return nil unless ast_node.is_a?(TARGET_NODE)
          pattern = ast_node.string.string_literal
          begin
            Regexp.new(pattern)
            nil
          rescue RegexpError => error
            InvalidRegexPatternError.new(ast_node, pattern, error.to_s)
          end
        end
      end

      # InvalidRegexPattern indicates that a pattern represented an invalid
      # regular expression.
      class InvalidRegexPatternError < BELParser::Language::Syntax::SyntaxError
        # Gets the invalid pattern.
        attr_reader :pattern

        def initialize(pattern_node, pattern, error_msg)
          super(pattern_node, nil)
          @pattern   = pattern
          @error_msg = error_msg
        end

        def msg
          <<-MSG.gsub(/^ +/, '').delete("\n")
            "#@pattern" is not a valid regular expression (#@error_msg).
          MSG
        end
      end
    end
  end
end
