require 'bel_parser/vendor/ast'
require 'bel_parser/parsers/ast/node'
require 'bel_parser/language/term_transformation'

module BELParser
  module Language
    module Version1_0
      module Upgrades
        class FusionTransformation
          include AST::Processor::Mixin
          include BELParser::Parsers::AST::Sexp
          include BELParser::Language::TermTransformation

          def fusion_node?(term_node)
            fusion_func = false

            fusionable_func =
              [
                'p', 'proteinAbundance',
                'r', 'rnaAbundance',
                'g', 'geneAbundance'
              ].include?(term_node.function.identifier.string_literal)
            return false unless fusionable_func

            if term_node.arguments[1] && term_node.arguments[1].child.respond_to?('function')
                ['fus', 'fusion'].include?(term_node.arguments[1].child.function.identifier.string_literal)
            else
              false
            end
          end

          def on_term(term_node)
            if fusion_node?(term_node)
              fusionable_func = term_node.function.identifier.string_literal
              parameter = term_node.arguments[0].child

              first_prefix = parameter.prefix.identifier.string_literal
              first_value = parameter.value.children[0].string_literal
              parameter = term_node.arguments[1].child.arguments[0].child
              second_prefix = parameter.prefix.identifier.string_literal
              second_value = parameter.value.children[0].string_literal

              term(
                function(
                  identifier(fusionable_func)),
                  term(
                    function(
                      identifier('fus')),
                    argument(
                      parameter(
                        prefix(
                          identifier(first_prefix)),
                        value(
                          identifier(first_value)))),
                    argument(
                      parameter(
                        prefix(
                          identifier(second_prefix)),
                        value(
                            identifier(second_value))))))
            else
              term_node.updated([process(term_node.function), term_node.arguments.map! {|arg| process(arg)}].flatten())
            end
          end
        end
      end
    end
  end
end
