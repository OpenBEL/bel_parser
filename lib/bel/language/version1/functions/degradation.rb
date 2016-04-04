require_relative '../../function'
require_relative '../return_types/abundance'

module BEL
  module Language
    module Version1
      module Functions
        # Degradation
        class Degradation
          include BEL::Language::Version1
          extend Function

          SHORT       = :deg
          LONG        = :degradation
          RETURN_TYPE = ReturnTypes::Abundance
          DESCRIPTION = 'Denotes the frequency or abundance of events in which a
  member is degraded in some way such that it is no longer a member'.freeze
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
