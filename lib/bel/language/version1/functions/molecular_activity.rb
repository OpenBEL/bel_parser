require_relative '../../function'
require_relative '../return_types/molecular_activity'

module BEL
  module Language
    module Version1
      module Functions
        # MolecularActivity
        class MolecularActivity
          include BEL::Language::Version1
          extend Function

          SHORT       = :act
          LONG        = :molecularActivity
          RETURN_TYPE = ReturnTypes::MolecularActivity
          DESCRIPTION = 'Denotes the frequency or abundance of events in which a
  member acts as a causal agent at the molecular scale'.freeze
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
