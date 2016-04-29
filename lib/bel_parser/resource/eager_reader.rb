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

      def load_threads
        @load_threads ||= Concurrent::Hash.new
      end

      def load_values(identifier)
        lock = locks[identifier] ||= Mutex.new
        if identifier.include?('taxonomy')
          puts "load_all_values, try lock..."
            end
        if lock.try_lock
          load_threads[identifier] = Thread.new do
            value_hash = {
              :name       => {},
              :identifier => {},
              :title      => {},
              :synonyms   => {}
            }
            retrieve_values_from_resource(identifier).each do |concept|
              value_hash[:name][concept.name]             = concept
              value_hash[:identifier][concept.identifier] = concept
              value_hash[:title][concept.title]           = concept
              concept.synonyms.each do |synonym|
                value_hash[:synonyms][synonym] = concept
              end
            end
            resources[identifier] = value_hash
            lock.unlock
          end
        end
      end

      def retrieve_resource(resource_identifier)
        if !resources.key?(resource_identifier)
          load_all_values(resource_identifier)
        end
      end

      def retrieve_value_from_resource(resource_identifier, value)
        if !resources.key?(resource_identifier)
          load_all_values(resource_identifier)
          if load_threads.key?(resource_identifier)
            load_thread = load_threads[resource_identifier]
            load_thread.join unless load_thread == Thread.current
          end
        end

        concepts = resources[resource_identifier]
        return nil unless concepts
        CACHE_KEYS.each do |key|
          cached_concept = concepts[key].fetch(value, nil)
          return cached_concept if cached_concept
        end
        nil
      end

      def retrieve_values_from_resource(resource_identifier)
        if !resources.key?(resource_identifier)
          load_all_values(resource_identifier)
          if load_threads.key?(resource_identifier)
            load_thread = load_threads[resource_identifier]
            load_thread.join unless load_thread == Thread.current
          end
        end

        concepts = resources[resource_identifier]
        return nil unless concepts
        concepts[:name].values
      end

    end
  end
end
