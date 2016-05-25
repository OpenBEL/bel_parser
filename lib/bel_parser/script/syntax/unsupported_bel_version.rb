require 'bel_parser/language'
require 'bel_parser/language/syntax_function'
require 'bel_parser/language/syntax_error'
require 'bel_parser/parsers/ast/node'
require 'concurrent/hash'
require_relative '../keywords'

module BELParser
  module Script
    module Syntax
      class UnsupportedBELVersion
        extend BELParser::Language::Syntax::SyntaxFunction
        extend Keyword

        TARGET_NODE = BELParser::Parsers::AST::DocumentProperty

        def self.map(ast_node, script_context)
          return nil unless ast_node.is_a?(TARGET_NODE)
          name, value = ast_node.children
          name_string = name.identifier.string_literal
          return nil unless is_bel_version?(name_string)

          value_string = value.children[0].string_literal
          begin
            BELParser::Language.specification(value_string)
            nil
          rescue ArgumentError
            latest_version = BELParser::Language.latest_supported_version
            latest_spec    = BELParser::Language.specification(latest_version)
            script_context[:specification] = latest_spec
            UnsupportedBELVersionWarning.new(ast_node, value_string)
          end
        end
      end

      # UnsupportedBELVersionError represents the use of an unsupported
      # BEL version string.
      class UnsupportedBELVersionWarning < BELParser::Language::Syntax::SyntaxWarning
        # Gets the unsupported bel version.
        attr_reader :unsupported_version

        def initialize(document_property_node, unsupported_version)
          super(document_property_node, nil)
          @unsupported_version = unsupported_version
          @latest              = BELParser::Language.latest_supported_version
        end

        def msg
          <<-MSG.gsub(/^ +/, '').delete("\n")
            Unsupported BEL version "#@unsupported_version". 
            Setting BEL version to the latest supported version "#@latest".
          MSG
        end
      end
    end
  end
end
