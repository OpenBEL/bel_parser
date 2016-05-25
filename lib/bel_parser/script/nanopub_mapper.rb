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

      def initialize(ast_enum, omit_on_error = false, omit_on_warning = false)
        @ast_enum        = ast_enum
        @omit_on_error   = omit_on_error
        @omit_on_warning = omit_on_warning
      end

      def each
        if block_given?
          @ast_enum.each do |(num, line, ast_node, state)|
            next unless STATEMENT_TYPES.include?(ast_node.type)

            errors   = errors(ast_node)
            warnings = warnings(ast_node)

            if (@omit_on_error && !errors.empty?) ||
              (@omit_on_warning && !warnings.empty?)

              report(num, line, errors, warnings)
              next
            end

            yield [num, line, ast_node, nanopub(ast_node, state)]
          end
        else
          enum_for(:each)
        end
      end

      def nanopub(ast_node, state)
        {
          bel_statement:      serialize(ast_node),
          citation:           citation(state[:citation]),
          support:            support(state[:support]),
          experiment_context: experiment_context(state[:annotations]),
          references:         references(*state.values_at(*DEFINITIONS)),
          metadata:           {
            bel_version:     state[:specification].version,
            document_header: state[:document_properties] || nil
          }
        }
      end

      def report(num, line, errors, warnings)
        warn "Line #{num}: #{line}"
        errors.each do |err|
          warn "  #{err}"
        end
        warnings.each do |warn|
          warn "  #{warn}"
        end
        warn
      end

      def errors(ast_node)
        ast_node
          .syntax_errors
          .select do |err|
            err.is_a?(::BELParser::Language::Syntax::SyntaxError)
          end.each(&:to_s)
      end

      def warnings(ast_node)
        ast_node
          .syntax_errors
          .select do |warn|
            warn.is_a?(::BELParser::Language::Syntax::SyntaxError) ||
              warn.is_a?(::BELParser::Language::Semantics::SemanticsWarning)
          end.each(&:to_s)
      end

      def citation(citation)
        return nil unless citation
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
            value: unquote(value)
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
          namespaces: (ns_defs || []).map do |keyword, (type, domain)|
            {
              keyword: keyword,
              type:    type,
              domain:  domain_value(type, domain)
            }
          end
        }
      end

      def domain_value(type, domain)
        case type
        when :url, :uri
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

  uri_reader = BELParser::Resource.default_uri_reader
  url_reader = BELParser::Resource::ResourceURLReader.new(true)

  namespaces = Hash[
    ARGV.map do |ns|
      prefix, identifier = ns.split('=')
      dataset            = uri_reader.retrieve_resource(identifier)
      dataset ? [prefix, dataset] : nil
    end.compact
  ]

  initial_state = {
    uri_reader:            uri_reader,
    url_reader:            url_reader,
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
          initial_state))).each.map(&:last).to_a
  puts JSON.dump(nanopubs)
end
