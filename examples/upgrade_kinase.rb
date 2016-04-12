#!/usr/bin/env ruby

require 'bel_parser'

# Main module for file.
module Main
  # TermASTGenerator reads an IO object line by line and only yields AST nodes
  # of type {BELParser::Parsers::AST::Term}.
  class TermASTGenerator
    # Filter out AST results of node type
    # +:term+ (i.e. {BELParser::Parsers::AST::Term}).
    FILTER = BELParser::ASTFilter.new(
      :term
    )

    # Yields Term AST to the block argument or provides an enumerator of
    # Term AST.
    def each(io)
      if block_given?
        filtered_ast = FILTER.each(BELParser::ASTGenerator.new.each(io))
        filtered_ast.each do |results|
          yield results
        end
      else
        enum_for(:each, io)
      end
    end
  end

  # Defines an {AST::Processor::Mixin AST processor} that transforms
  # a BEL 1.0 kinase term into BEL 2.0 activity term with molecularActivity
  # modifier.
  class KinaseTransformation
    include AST::Processor::Mixin
    include BELParser::Parsers::AST::Sexp

    # Called when visiting nodes of type +term+.
    def on_term(term_node)
      # Return original term node unless the function is kin/kinaseActivity.
      function = term_node.function
      return term_node unless
        %w(kin kinaseActivity).include?(function.identifier.string_literal)

      # If kinaseActivity update the children of the term (produces new AST).
      term_node.updated([
        # activity function
        process(term_node.function),
        # original arguments
        term_node.arguments,
        # additional molecularActivity argument
        add_molecular_activity('kin')
      ].flatten)
    end

    # Called by {#on_term} to create a +molecularActivity+ argument using the
    # AST Sexpressions.
    def add_molecular_activity(_activity_identifier)
      argument(
        term(
          function(
            identifier('molecularActivity')),
          argument(
            parameter(
              prefix(nil),
              value(
                identifier('kin'))))))
    end

    # Called when visiting nodes of type +function+. The function's children
    # are changed to represent an +activity+. We could have also returned a
    # new function node using the AST Sexpressions:
    #
    #   function(
    #     identifier('activity'))
    #
    def on_function(function_node)
      function_node.updated([
                              identifier('activity')
                            ])
    end
  end

  # Defines an {AST::Processor::Mixin AST processor} that serializes a
  # BEL term to a string.
  class SerializeToBEL
    include AST::Processor::Mixin

    # Get the bel_string instance variable. Lazily assign to the empty string
    # if the instance variable is nil.
    def bel_string
      @bel_string ||= ''
    end

    # Called when visiting nodes of type +term+.
    def on_term(term_node)
      if defined? @separate_by_comma
        remove_instance_variable(:@separate_by_comma)
      end
      process(term_node.function)
      bel_string << '('
      term_node.arguments.each { |arg| process(arg) }
      bel_string << ')'
    end

    # Called when visiting nodes of type +argument+.
    def on_argument(argument_node)
      bel_string << ', ' if defined? @separate_by_comma

      process(argument_node.child)
      @separate_by_comma = true
    end

    # Called when visiting nodes of type +function+.
    def on_function(function_node)
      bel_string << function_node.identifier.string_literal
    end

    # Called when visiting nodes of type +parameter+.
    def on_parameter(param_node)
      process(param_node.prefix)
      process(param_node.value)
    end

    # Called when visiting nodes of type +prefix+.
    def on_prefix(prefix_node)
      prefix = prefix_node.identifier
      bel_string << "#{prefix.string_literal}:" unless prefix.nil?
    end

    # Called when visiting nodes of type +value+.
    def on_value(value_node)
      literal = value_node.children[0].string_literal
      bel_string << literal
    end
  end
end

# Run as a ruby script:
#   ruby examples/upgrade_kinase.rb
#
# The program outputs input AST, transformed AST, and serialized BEL result.
if __FILE__ == $PROGRAM_NAME
  Main::TermASTGenerator.new.each($stdin) do |(line_number, line, results)|
    # Here we are yielded the line_number, the actual line string, and the
    # AST results.
    puts "#{line_number}: #{line}"
    puts

    # Grab the first one which should be a term or nil.
    ast = results.first
    puts 'Original AST'
    puts ast.inspect(1)
    puts

    # Transform into a BEL 2.0 kinase.
    transformer = Main::KinaseTransformation.new
    transformed_node = transformer.process(ast)
    puts 'Transformed AST'
    puts transformed_node.inspect(1)
    puts

    # Serialize new Term node to BEL string.
    serializer = Main::SerializeToBEL.new
    serializer.process(transformed_node)
    puts 'BEL serialization'
    puts serializer.bel_string
  end
end
