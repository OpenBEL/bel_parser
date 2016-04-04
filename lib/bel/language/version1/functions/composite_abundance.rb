require_relative '../../function'
require_relative '../return_types/abundance'

module BEL
  module Language
    module Version1
      module Functions
        # CompositeAbundance
        class CompositeAbundance
          include BEL::Language::Version1
          extend Function

          SHORT       = :composite
          LONG        = :compositeAbundance
          RETURN_TYPE = ReturnTypes::Abundance
          DESCRIPTION = 'Denotes the frequency or abundance of events in which
  members are present'.freeze
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
