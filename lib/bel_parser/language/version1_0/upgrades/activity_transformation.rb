require 'bel_parser/vendor/ast'
require 'bel_parser/parsers/ast/node'
require 'bel_parser/language/term_transformation'

module BELParser
  module Language
    module Version1_0
      module Upgrades
        class ActivityTransformation
          include AST::Processor::Mixin
          include BELParser::Parsers::AST::Sexp
          include BELParser::Language::TermTransformation

          def on_term(term_node)
            if ACTIVITIES.keys.include?(term_node.function.identifier.string_literal)
              term_node.updated([
                                  # activity function
                                  process(term_node.function),
                                  # original arguments
                                  term_node.arguments.map! {|arg| argument(process(arg.child))},
                                  # additional molecularActivity argument
                                  add_molecular_activity(ACTIVITIES[term_node.function.identifier.string_literal])
                              ].flatten)

            end
          end

          def add_molecular_activity(_activity_identifier)
            argument(
              term(
                function(
                  identifier('molecularActivity')),
                argument(
                  parameter(
                    prefix(
                      identifier('default')),
                    value(
                      identifier(_activity_identifier))))))
          end

          def on_function(function_node)
            function_node.updated([identifier('activity')])
          end
        end
      end
    end
  end
end
