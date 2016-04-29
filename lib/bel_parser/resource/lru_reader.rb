require_relative 'lru_cache'

module BELParser
  module Resource
    module LRUReader

      LRU_MAX_SIZE = 2000
      private_constant :LRU_MAX_SIZE

      def retrieve_resource(resource_identifier)
        @resources ||= Hash.new { |hash, key| hash[key] = {} }
        cached_dataset = @resources[resource_identifier][:dataset]
        return cached_dataset if cached_dataset

        resolved_dataset = super
        @resources[resource_identifier][:dataset] = resolved_dataset
        @resources[resource_identifier][:values]  = LRUCache.new(LRU_MAX_SIZE)
        resolved_dataset
      end

      def retrieve_value_from_resource(resource_identifier, value)
        retrieve_resource(resource_identifier)
        @resources[resource_identifier][:values].getset(value) {
          super
        }
      end

      def retrieve_values_from_resource(resource_identifier)
        retrieve_resource(resource_identifier)
        super
      end
    end
  end
end
