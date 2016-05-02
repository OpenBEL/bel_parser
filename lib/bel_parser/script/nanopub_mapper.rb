require_relative '../parsers/serializer'

module BELParser
  module Script
    # NanopubMapper maps BEL Script AST nodes to an aggregated nanopub.
    class NanopubMapper
      include BELParser::Parsers

      STATEMENT_TYPES = [
        :simple_statement,
        :nested_statement,
        :observed_term
      ]

      BEL_STATEMENT      = 'bel_statement'.freeze
      CITATION           = 'citation'.freeze
      EXPERIMENT_CONTEXT = 'experiment_context'.freeze
      REFERENCES         = 'references'.freeze
      METADATA           = 'metadata'.freeze

      def initialize(ast_enum)
        @ast_enum = ast_enum
      end

      def each
        if block_given?
          @ast_enum.each do |(line_nunber, line, ast_node, state)|
            next unless STATEMENT_TYPES.include?(ast_node.type)

            nanopub =
              {
                BEL_STATEMENT      => serialize(ast_node),
                CITATION           => state[:citation],
                EXPERIMENT_CONTEXT => nil,
                REFERENCES         => nil,
                METADATA           => nil
              }
            yield nanopub
            # TODO One time: Map annotation and namespace definitions.
            # TODO Collect annotations.
            # TODO Combine into hash. Yield.
          end
        else
          enum_for(:each)
        end
      end
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  $LOAD_PATH.unshift(
    File.join(File.expand_path(File.dirname(__FILE__)), '..', '..', '..', 'lib'))

  require 'json'
  require 'bel_parser'
  require 'bel_parser/language'
  require 'bel_parser/parsers/serializer'
  require 'bel_parser/script'
  require 'bel_parser/resource/resource_url_reader'
  include BELParser::Script

  rr = BELParser::Resource::ResourceURLReader.new(true)
  namespaces = Hash[
    ARGV.map do |ns|
      prefix, identifier = ns.split('=')
      dataset            = rr.retrieve_resource(identifier)
      dataset ? [prefix, dataset] : nil
    end.compact
  ]

  initial_state = {
    resource_reader:       rr,
    specification:         BELParser::Language.specification('2.0'),
    namespace_definitions: namespaces
  }

  NanopubMapper.new(
    Validator.new(
      StateAggregator.new(
        FirstNode.new(Filter.new(BELParser::ASTGenerator.new(File.open(ARGV.first)))),
        initial_state))).each do |nanopub|
          puts JSON.dump(nanopub)
        end
end
