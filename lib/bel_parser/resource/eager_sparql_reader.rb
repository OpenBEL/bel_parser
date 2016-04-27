require 'concurrent/hash'

require_relative 'sparql_reader'

module BELParser
  module Resource
    # EagerSPARQLReader
    class EagerSPARQLReader < SPARQLReader
      def initialize(sparql_endpoint_url, validate_url = true)
        @resources = Concurrent::Hash.new
        @locks     = Concurrent::Hash.new
        super
      end

      def retrieve_resource(resource_identifier)
        if @resources.key?(resource_identifier)
          concepts = @resources[resource_identifier]
          concepts[value]
        else
          lock = @locks[resource_identifier] ||= Mutex.new
          if lock.try_lock
            Thread.new do
              concepts = retrieve_values_from_resource(resource_identifier).to_a
              @resources[resource_identifier] = 
                Hash[
                  concepts.map do |c|
                    [c.name, c]
                  end
                ]
              lock.unlock
            end
          end

          super
        end
      end

      def retrieve_value_from_resource(resource_identifier, value)
        concepts = @resources[resource_identifier]
        return super unless concepts
        concepts[value]
      end

      def retrieve_values_from_resource(resource_identifier)
        concepts = @resources[resource_identifier]
        return super unless concepts
        concepts
      end
    end
  end
end
