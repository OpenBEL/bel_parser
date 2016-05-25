module BELParser
  module Script
    # ApplyResourceURI applies the _uri_ property to
    # {BELParser::Parsers::AST::AnnotationDefinition} and
    # {BELParser::Parsers::AST::NamespaceDefinition} child nodes.
    class ApplyResourceURI
      include AST::Processor::Mixin

      def on_annotation_definition(node)
        update_uri_property(node)
      end

      def on_namespace_definition(node)
        update_uri_property(node)
      end

      private

      def update_uri_property(node)
        domain = node.domain
        if domain.url?
          resource_url = domain.child.string.string_literal
          node.uri     = BELParser::Resource.resolve_uri(resource_url)
        end

        node
      end
    end
  end
end
