require 'bel_parser/language'
require 'bel_parser/language/syntax_function'
require 'bel_parser/language/syntax_error'
require 'bel_parser/quoting'
require 'bel_parser/parsers/ast/node'
require 'concurrent/hash'

module BELParser
  module Script
    module Syntax
      class UnsupportedBELVersion
        extend BELParser::Language::Syntax::SyntaxFunction
        extend BELParser::Quoting

        TARGET_NODE         = BELParser::Parsers::AST::DocumentProperty
        BEL_VERSION_REGEX   = /#{Regexp.escape('bel_version')}/i

        def self.map(ast_node, script_context)
          return nil unless ast_node.is_a?(TARGET_NODE)
          name, value = ast_node.children
          name_string  = name.identifier.string_literal
          return nil unless name_string =~ BEL_VERSION_REGEX

          value_string = unquote(value.children[0].string_literal)
          begin
            BELParser::Language.specification(value_string)
            nil
          rescue ArgumentError
            UnsupportedBELVersionError.new(ast_node, value_string)
          end
        end
      end

      # UnsupportedBELVersionError represents the use of an unsupported
      # BEL version string.
      class UnsupportedBELVersionError < BELParser::Language::Syntax::SyntaxError
        # Gets the unsupported bel version.
        attr_reader :unsupported_version

        def initialize(document_property_node, unsupported_version)
          super(document_property_node, nil)
          @unsupported_version = unsupported_version
        end

        def msg
          %(Unsupported BEL version "#@unsupported_version".)
        end
      end
    end
  end
end
