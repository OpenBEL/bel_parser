require_relative '../../function'
require_relative '../return_types/protein_modification'

module BEL
  module Language
    module Version2
      module Functions
        # ProteinModification
        class ProteinModification
          include BEL::Language::Version2
          extend Function

          SHORT       = :pmod
          LONG        = :proteinModification
          RETURN_TYPE = ReturnTypes::ProteinModification
          DESCRIPTION = 'Denotes a covalently modified protein abundance'.freeze
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
