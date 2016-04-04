require_relative '../../function'
require_relative '../return_types/biological_process'

module BEL
  module Language
    module Version1
      module Functions
        # BiologicalProcess
        class BiologicalProcess
          include BEL::Language::Version1
          extend Function

          SHORT       = :bp
          LONG        = :biologicalProcess
          RETURN_TYPE = ReturnTypes::BiologicalProcess
          DESCRIPTION = 'Denotes a process or population of events'.freeze
          SIGNATURES  = [].freeze

          def self.short
            SHORT
          end

          def self.long
            LONG
          end

          def self.return_type
            RETURN_TYPE
          end

          def self.description
            DESCRIPTION
          end

          def self.signatures
            SIGNATURES
          end
        end
      end
    end
  end
end
