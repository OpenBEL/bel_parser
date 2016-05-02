require 'bel_parser'
require 'bel_parser/resource/resource_url_reader'
require 'bel/evidence_model'

module BEL::Translator::Plugins
  module BelScript
    class Reader
      include ::BELParser::Script

      def initialize(io)
        @io    = io
        @state = {
          resource_reader: BELParser::Resource::ResourceURLReader.new(true),
          specification: BELParser::Language.specification('2.0'),
          namespace_definitions: {}
        }
      end

      def each
        if block_given?
          NanopubMapper.new(
            Validator.new(
              StateAggregator.new(
                FirstNode.new(Filter.new(BELParser::ASTGenerator.new(@io))),
                @state))).each do |hash|
                  yield ::BEL::Model::Evidence.create(hash)
                end
        else
          enum_for(:each)
        end
      end
    end
  end
end
