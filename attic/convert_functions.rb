#!/usr/bin/env ruby
$LOAD_PATH.unshift('lib')
require 'bel_parser/vendor/ast'
require 'erb'
require 'bel_parser/language/version1_0'
require 'bel_parser/language/semantic_ast'
require_relative 'version1_functions'
include AST::Sexp
V1 = BELParser::Language::Version1_0::Specification.new

class ArgBuilder
  include BELParser::Language::Semantics::Builder

  def build(&block)
    instance_eval(&block)
    @arg
  end

  def argument(param_or_term, **properties)
    @arg = super
  end

  def variadic_arguments(params_or_terms, **properties)
    @arg = super
  end
end

def term_sexp(function_identifier, _spec)
  function = V1.function(function_identifier.to_sym)
  BELParser::Language::Semantics::Builder.build do
    term(
      function(
        identifier(
          function_of(
            function))))
  end
end

def arg_parameter_sexp(encoding)
  ArgBuilder.new.build do
    argument(
      parameter(
        prefix(
          identifier(
            has_namespace,
            namespace_of(:*))),
        value(
          value_type(
            has_encoding,
            encoding_of(encoding.to_sym)
          ))))
  end
end

def arg_wild_parameter_sexp
  ArgBuilder.new.build do
    argument(
      parameter(
        prefix(
          any),
        value(
          value_type(
            encoding_of(:*)
          ))))
  end
end

def arg_function_return_type_sexp(return_type_identifier, spec)
  return_type = spec.return_type(return_type_identifier.to_sym)
  ArgBuilder.new.build do
    argument(
      term(
        function(
          identifier(
            return_type_of(
              return_type)))))
  end
end

def variadic_function_return_type_sexp(return_type_identifier, spec)
  return_type = spec.return_type(return_type_identifier.to_sym)
  ArgBuilder.new.build do
    variadic_arguments(
      term(
        function(
          identifier(
            return_type_of(
              return_type)))))
  end
end

def ast(string_form)
  tokens      = string_form.scan /[a-zA-Z:.*]+/
  function    = tokens.delete_at(0)
  return_type = tokens.delete_at(-1)
  arguments   = tokens

  ast = term_sexp(function, V1)
  arguments.each do |arg|
    case arg
    when /E:([a-zA-Z]+)/
      encoding    = Regexp.last_match[1]
      encoding[0] = encoding[0].upcase
      ast = ast << arg_parameter_sexp(encoding)
    when /E:[*]/
      ast = ast << arg_wild_parameter_sexp
    when /F:([a-zA-Z]+)\.\.\./
      return_type = Regexp.last_match[1]
      ast = ast << variadic_function_return_type_sexp(return_type, V1)
    when /F:([a-zA-Z]+)/
      return_type = Regexp.last_match[1]
      ast = ast << arg_function_return_type_sexp(return_type, V1)
    end
  end
  ast
end

OUT_DIR = 'lib/bel_parser/language/version1_0/gen_functions'.freeze
template = ERB.new(File.read('super_function_template.erb'))
Dir.mkdir(OUT_DIR) unless Dir.exist?(OUT_DIR)
VERSION1_FUNCTIONS.each do |func|
  name, description, short, long, return_type, signatures = func.values_at(:name, :description, :short, :long, :return_type, :signatures)

  signatures.each do |sig|
    ast = ast(sig[:string_form]).inspect(7).tr('-', '_').gsub(/\(([a-zA-Z_]+$)/, '\1(')
    ast.gsub!(/(s\(:[a-zA-Z_]+), ?/) do |type|
      type = type.match(/:([a-zA-Z_]+)/)[1]
      "#{type}("
    end
    ast.gsub!(/(s\(:[a-zA-Z_]+)\)/) do |type|
      type = type.match(/:([a-zA-Z_]+)/)[1]
      "#{type}()"
    end
    ast.gsub!(/([a-zA-Z_]+\(\))/) do |type|
      type = type.match(/([a-zA-Z_]+)/)[1]
      type.to_s
    end
    ast.gsub!(/BELParser::Language::Version1_0::Functions::/, '')
    sig[:ast] = ast
  end
  b = binding
  contents = template.result(b)

  file_name =
    name
    .gsub(/(?<=[a-z])([A-Z])(?=[a-z])/) { |letter| "_#{letter.downcase}" }
    .gsub(/([A-Z])(?=[a-z])/) { |letter| "_#{letter.downcase}" }[1..-1]
    .gsub(/([A-Z]+)/) { |letters| "_#{letters.downcase}" }
  file_name = case file_name
              when '_na_abundance'
                'rna_abundance'
              when '_na_abundance_with_fusion'
                'rna_abundance_with_fusion'
              when '_tp_bound_activity_of_complex_abundance'
                'gtp_bound_activity_of_complex_abundance'
              when '_tp_bound_activity_of_protein_abundance'
                'gtp_bound_activity_of_protein_abundance'
              when '_na_abundance_with_location'
                'rna_abundance_with_location'
              when '_na_abundance_with_variant'
                'rna_abundance_with_variant'
              else
                file_name
  end
  File.open("lib/bel_parser/language/version1_0/gen_functions/#{file_name}.rb", 'w') do |f|
    f.write(contents)
  end
end
