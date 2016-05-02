require 'bel_parser/quoting'
require_relative '../parsers/serializer'

module BELParser
  module Script
    # NanopubMapper maps BEL Script AST nodes and state to aggregated
    # nanopub hash objects.
    class NanopubMapper
      include BELParser::Parsers
      include BELParser::Quoting

      STATEMENT_TYPES = [
        :simple_statement,
        :nested_statement,
        :observed_term
      ]

      DEFINITIONS = [:annotation_definitions, :namespace_definitions]

      def initialize(ast_enum)
        @ast_enum = ast_enum
      end

      def each(&block)
        if block_given?
          @ast_enum.each do |(line_nunber, line, ast_node, state)|
            next unless STATEMENT_TYPES.include?(ast_node.type)
            yield nanopub(ast_node, state, &block)
          end
        else
          enum_for(:each)
        end
      end

      def nanopub(ast_node, state, &block)
        {
          bel_statement:      serialize(ast_node),
          citation:           citation(state[:citation]),
          support:            support(state[:support]),
          experiment_context: experiment_context(state[:annotations]),
          references:         references(*state.values_at(*DEFINITIONS)),
          metadata:           nil
        }
      end

      def citation(citation)
        citation.each do |field, value|
          citation[field] = unquote(value)
        end
      end

      def support(support)
        unquote(support)
      end

      def experiment_context(annotations)
        (annotations || []).map do |name, value|
          {
            name:  name,
            value: value
          }
        end
      end

      def references(anno_defs, ns_defs)
        {
          annotations: (anno_defs || []).map do |keyword, (type, domain)|
            {
              keyword: keyword,
              type:    type,
              domain:  domain_value(type, domain)
            }
          end,
          namespaces: (ns_defs || []).map do |keyword, uri|
            {
              keyword: keyword,
              uri:     domain_value(:uri, uri)
            }
          end
        }
      end

      def domain_value(type, domain)
        case type
        when :uri
          domain.identifier
        when :list
          domain
        else
          domain.to_s
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

  io =
    if ARGV.first
      File.open(ARGV.first)
    else
      $stdin
    end

  nanopubs =
    NanopubMapper.new(
      Validator.new(
        StateAggregator.new(
          FirstNode.new(Filter.new(BELParser::ASTGenerator.new(io))),
          initial_state))).each.to_a
  puts JSON.dump(nanopubs)
end
