require 'bel_parser/vendor/ast'
require 'bel_parser/parsers/ast/node'
require 'bel_parser/language/term_transformation'

module BELParser
  module Language
    module Version1_0
      module Upgrades
        class TranslocationTransformation
          include AST::Processor::Mixin
          include BELParser::Parsers::AST::Sexp
          include BELParser::Language::TermTransformation

          def on_term(term_node)
            if ['tloc', 'translocation'].include?(term_node.function.identifier.string_literal)
              term_node.updated([term_node.function, term_node.arguments[0], add_loc_func(term_node.arguments[1], 'fromLoc'), add_loc_func(term_node.arguments[2], 'toLoc') ].flatten)
            else
              term_node.updated([process(term_node.function), term_node.arguments.map! {|arg| process(arg)}].flatten())
            end
          end

          def add_loc_func(argument_node, function_name)
            prefix_name = argument_node.child.prefix.children[0].string_literal
            value_name = argument_node.child.value.children[0].string_literal
            argument(
              term(
                function(
                  identifier(function_name)),
                argument(
                  parameter(
                    prefix(
                      identifier(prefix_name)),
                    value(
                      identifier(value_name))))))
          end
        end
      end
    end
  end
end
