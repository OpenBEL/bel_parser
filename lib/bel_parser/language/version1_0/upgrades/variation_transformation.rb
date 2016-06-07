require 'bel_parser/vendor/ast'
require 'bel_parser/parsers/ast/node'
require 'bel_parser/language/term_transformation'

module BELParser
  module Language
    module Version1_0
      module Upgrades
        class VariationTransformation
          include AST::Processor::Mixin
          include BELParser::Parsers::AST::Sexp
          include BELParser::Language::TermTransformation

          def on_term(term_node)
            is_parent_func = ['p', 'proteinAbundance', 'r', 'rnaAbundance', 'g', 'geneAbundance'].include?(term_node.function.identifier.string_literal)
            parent_func    = term_node.function.identifier.string_literal

            unless is_parent_func
              return term_node.updated([process(term_node.function), term_node.arguments.map! {|arg| process(arg)}].flatten())
            end

            if term_node.arguments[0].parameter?
              param_prefix = term_node.arguments[0].child.prefix.identifier.string_literal
              param_value  = term_node.arguments[0].child.value.children[0].string_literal
            end

            if term_node.arguments[1].respond_to?('child') && term_node.arguments[1].child.respond_to?('function') && term_node.arguments[1].child.function
              is_sub_func = ['sub', 'substitution'].include?(term_node.arguments[1].child.function.identifier.string_literal)
              is_trunc_func = ['trunc', 'truncation'].include?(term_node.arguments[1].child.function.identifier.string_literal)
            end

            if is_sub_func || is_trunc_func
              if is_parent_func && is_sub_func
                variant_node = term_node.arguments[1].child
                ref = variant_node.arguments[0].child.value.children[0].string_literal
                loc = variant_node.arguments[1].child.value.children[0].string_literal
                alt = variant_node.arguments[2].child.value.children[0].string_literal

                if ['p'].include?(parent_func)
                  return protein_sub_conversion(parent_func, param_prefix, param_value, ref, loc, alt)
                else
                  return dna_sub_conversion(parent_func, param_prefix, param_value, ref, loc, alt)
                end
              end

              if is_parent_func && is_trunc_func

                variant_node = term_node.arguments[1].child
                loc = variant_node.arguments[0].child.value.children[0].string_literal

                if ['p'].include?(parent_func)
                  return protein_trunc_conversion(parent_func, param_prefix, param_value, loc)
                else
                  return dna_trunc_conversion(parent_func, param_prefix, param_value, loc)
                end

              end
            else
              term_node.updated([process(term_node.function), term_node.arguments.map! {|arg| process(arg)}].flatten())
            end
          end

          def protein_sub_conversion(parent_func, param_prefix, param_value, ref, loc, alt)
            term(
              function(
                identifier(parent_func)),
              argument(
                parameter(
                  prefix(
                    identifier(param_prefix)),
                  value(
                    identifier(param_value)))),
              argument(
                term(
                  function(
                    identifier('var')),
                  argument(
                    parameter(
                      value(
                        identifier(%("#{parent_func}.#{ref}#{loc}#{alt}"))))))))
          end

          def dna_sub_conversion(parent_func, param_prefix, param_value, ref, loc, alt)  # and RNA
            converted_parent_func =
              case parent_func
              when 'p', 'proteinAbundance'
                'p'
              when 'g', 'geneAbundance'
                'c'
              when 'r', 'rnaAbundance'
                'r'
              end

            term(
              function(
                identifier(parent_func)),
              argument(
                parameter(
                  prefix(
                    identifier(param_prefix)),
                  value(
                    identifier(param_value)))),
              argument(
                term(
                  function(
                    identifier('var')),
                  argument(
                    parameter(
                      value(
                        identifier(%("#{converted_parent_func}.#{loc}#{ref}>#{alt}"))))))))
          end

          def protein_trunc_conversion(parent_func, param_prefix, param_value, loc)
            term(
              function(
                identifier(parent_func)),
              argument(
                parameter(
                  prefix(
                    identifier(param_prefix)),
                  value(
                    identifier(param_value)))),
              argument(
                term(
                  function(
                    identifier('var')),
                  argument(
                    parameter(
                      value(
                        identifier(%("#{parent_func}.#{loc}*"))))))))
          end

          def dna_trunc_conversion(parent_func, param_prefix, param_value, loc)  # and RNA
            converted_parent_func =
              case parent_func
              when 'p', 'proteinAbundance'
                'p'
              when 'g', 'geneAbundance'
                'c'
              when 'r', 'rnaAbundance'
                'r'
              end

            term(
              function(
                identifier(parent_func)),
              argument(
                parameter(
                  prefix(
                    identifier(param_prefix)),
                  value(
                    identifier(param_value)))),
              argument(
                term(
                  function(
                    identifier('var')),
                  argument(
                    parameter(
                      value(
                        identifier(%("#{converted_parent_func}.#{loc}*"))))))))
          end
        end
      end
    end
  end
end
