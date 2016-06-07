require          'bel_parser/vendor/ast'
require          'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module TermTransformation
      include AST::Processor::Mixin
      include BELParser::Parsers::AST::Sexp

      ACTIVITIES = {
        'cat' => 'cat',
        'catalyticActivity' => 'cat',
        'chap' => 'chap',
        'chaperoneActivity' => 'chap',
        'gtp' => 'gtp',
        'gtpBoundActivity' => 'gtp',
        'kin' => 'kin',
        'kinaseActivity' => 'kin',
        'act' => 'act',
        'molecularActivity' => 'act',
        'pep' => 'pep',
        'peptidaseActivity' => 'pep',
        'phos' => 'phos',
        'phosphataseActivity' => 'phos',
        'ribo' => 'ribo',
        'ribosylationActivity' => 'ribo',
        'tscript' => 'tscript',
        'transcriptionalActivity' => 'tscript',
        'tport' => 'tport',
        'transportActivity' => 'tport'
      }

      PMODTYPES = {
        'P' => 'Ph',
        'A' => 'Ac',
        'F' => 'Farn',
        'G' => 'Glyco',
        'H' => 'Hy',
        'M' => 'Me',
        'R' => 'ADPRib',
        'S' => 'Sumo',
        'U' => 'Ub'
      }

      def on_observed_term(observed_term_node)
        observed_term_node.updated([process(observed_term_node.statement)])
      end

      def on_nested_statement(nested_statement_node)
        nested_statement_node.updated([process(nested_statement_node.statement)])
      end

      def on_simple_statement(simple_statement_node)
        simple_statement_node.updated([process(simple_statement_node.statement)])
      end

      def on_statement(statement_node)
        statement_node.updated([process(statement_node.subject), statement_node.relationship, process(statement_node.object), statement_node.comment])
      end

      def on_subject(subject_node)
        subject_node.updated([process(subject_node.term)])
      end

      def on_object(object_node)
        return if object_node.nil?
        object_node.updated([process(object_node.child)])
      end

      def on_argument(argument_node)
        argument_node.updated([process(argument_node.child)])
      end

      def on_function(function_node)
        function_node.updated([process(function_node.identifier)])
      end

      # Called when visiting nodes of type +term+.
      def on_term(term_node)
        term_node.updated([process(term_node.function), term_node.arguments.map! {|arg| process(arg)}].flatten())
      end

      def collapse(node)
        node.to_sexp(indent=0).gsub("\n", '')
      end
    end
  end
end
