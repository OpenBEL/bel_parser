require_relative 'lru_cache'

module BELParser
  module Resource
    module LRUReader

      LRU_MAX_SIZE = 500
      private_constant :LRU_MAX_SIZE

      def resources
        @resources ||= Concurrent::Hash.new
      end

      def retrieve_resource(resource_identifier)
        if !resources.key?(resource_identifier)
          resources[resource_identifier] = LRUCache.new(LRU_MAX_SIZE)
        end
        super
      end

      def retrieve_value_from_resource(resource_identifier, value)
        if !resources.key?(resource_identifier)
          resources[resource_identifier] = LRUCache.new(LRU_MAX_SIZE)
        end

        concepts = resources[resource_identifier]
        concepts.getset(value) {
          puts "retrieving from RDF..."
          super
        }
      end

      def retrieve_values_from_resource(resource_identifier)
        super
      end
    end
  end
end
