require 'bel_parser/language'
require 'bel_parser/language/syntax_function'
require 'bel_parser/language/syntax_error'
require 'bel_parser/quoting'
require 'bel_parser/parsers/ast/node'
require 'concurrent/hash'
require_relative '../keywords'

module BELParser
  module Script
    module Syntax
      class UndefinedAnnotation
        extend BELParser::Language::Syntax::SyntaxFunction
        extend BELParser::Script::Keyword

        TARGET_NODE       = BELParser::Parsers::AST::Set

        def self.map(ast_node, script_context)
          return nil unless ast_node.is_a?(TARGET_NODE)
          name_string = ast_node.name.identifier.string_literal
          annotation_definitions =
            script_context[:annotation_definitions] ||= Concurrent::Hash.new

          return nil if is_implicit_annotation?(name_string)
          return nil if annotation_definitions.key?(name_string)
          UndefinedAnnotationError.new(
            ast_node,
            name_string,
            script_context[:annotation_definitions])
        end
      end

      # UndefinedAnnotationError represents an undefined annotation seen when
      # checking a SET annotation.
      class UndefinedAnnotationError < BELParser::Language::Syntax::SyntaxError
        # Gets the undefined prefix.
        attr_reader :prefix

        def initialize(set_node, prefix, annotation_definitions)
          super(set_node, nil)
          @prefix                 = prefix
          @annotation_definitions = annotation_definitions
        end

        def msg
          defined_annotations =
            if @annotation_definitions.empty?
              'No annotations are defined.'
            else
              annotation_prefixes = @annotation_definitions.keys.join(', ')
              "Defined annotations: #{annotation_prefixes}"
            end
          <<-MSG.gsub(/^ +/, '').delete("\n")
            Annotation definition is missing for "#@prefix". 
            #{defined_annotations}
          MSG
        end
      end
    end
  end
end
