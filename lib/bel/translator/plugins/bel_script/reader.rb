require 'bel_parser'
require 'bel_parser/resource/resource_url_reader'
require 'bel/nanopub'

module BEL::Translator::Plugins
  module BelScript
    class Reader
      include ::BELParser::Script
      
      SyntaxError = ::BELParser::Language::Syntax::SyntaxError

      def initialize(io, options = {})
        @io    = io
        @state = {
          resource_reader:       BELParser::Resource::ResourceURLReader.new(true),
          specification:         BELParser::Language.specification('2.0'),
          namespace_definitions: {}
        }
      end

      def each
        if block_given?
          NanopubMapper.new(
            Validator.new(
              StateAggregator.new(
                FirstNode.new(Filter.new(BELParser::ASTGenerator.new(@io))),
                @state))
          ).each do |(num, line, ast_node, nanopub_hash)|
            yield ::BEL::Nanopub::Nanopub.create(nanopub_hash)
          end
        else
          enum_for(:each)
        end
      end
    end
  end
end
