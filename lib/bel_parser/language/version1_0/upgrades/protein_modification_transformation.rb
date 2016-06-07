require 'bel_parser/vendor/ast'
require 'bel_parser/parsers/ast/node'
require 'bel_parser/language/term_transformation'

module BELParser
  module Language
    module Version1_0
      module Upgrades
        class ProteinModificationTransformation
          include AST::Processor::Mixin
          include BELParser::Parsers::AST::Sexp
          include BELParser::Language::TermTransformation

          def on_term(term_node)
            if ['pmod', 'proteinmodification'].include?(term_node.function.identifier.string_literal)
              # straightforward replacement of first argument to pmod with pmodtype value
              term_node.updated([term_node.function, update_pmod(term_node.arguments[0]), term_node.arguments[1], term_node.arguments[2] ].flatten)
            else
              term_node.updated([process(term_node.function), term_node.arguments.map! {|arg| process(arg)}].flatten())
            end
          end

          def update_pmod(argument_node)
            param_value = argument_node.child.value.children[0].string_literal
            argument(
              parameter(
                prefix(
                  identifier('default')),
                value(
                  identifier(PMODTYPES[param_value]))))
          end
        end
      end
    end
  end
end
