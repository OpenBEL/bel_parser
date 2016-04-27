require 'concurrent/hash'

module BELParser
  module Resource
    module EagerReader

      EMPTY_ARRAY = [].freeze
      CACHE_KEYS  = [:name, :identifier, :title, :synonyms].freeze

      def resources
        @resources ||= Concurrent::Hash.new
      end

      def locks
        @locks ||= Concurrent::Hash.new
      end

      def retrieve_resource(resource_identifier)
        if !resources.key?(resource_identifier)
          load_all_values(resource_identifier)
        end
        super
      end

      def retrieve_value_from_resource(resource_identifier, value)
        if !resources.key?(resource_identifier)
          load_all_values(resource_identifier)
        end

        concepts = resources[resource_identifier]
        return super unless concepts
        CACHE_KEYS.each do |key|
          cached_concept = concepts[key].fetch(value, nil)
          return cached_concept if cached_concept
        end
        
        EMPTY_ARRAY
      end

      def retrieve_values_from_resource(resource_identifier)
        if !resources.key?(resource_identifier)
          load_all_values(resource_identifier)
        end

        concepts = resources[resource_identifier]
        return super unless concepts
        concepts[:name].values
      end

      def load_all_values(identifier)
        lock = locks[identifier] ||= Mutex.new
        if lock.try_lock
          Thread.new do
            value_hash = {
              :name       => Hash.new { |hash, key| hash[key] = [] },
              :identifier => Hash.new { |hash, key| hash[key] = [] },
              :title      => Hash.new { |hash, key| hash[key] = [] },
              :synonyms   => Hash.new { |hash, key| hash[key] = [] }
            }
            retrieve_values_from_resource(identifier).each do |concept|
              value_hash[:name][concept.name] << concept
              value_hash[:identifier][concept.identifier] << concept
              value_hash[:title][concept.title] << concept
              concept.synonyms.each do |synonym|
                value_hash[:synonyms][synonym] << concept
              end
            end
            resources[identifier] = value_hash
            lock.unlock
          end
        end
      end
    end
  end
end
