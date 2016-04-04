require_relative '../../function'
require_relative '../return_types/protein_abundance'

module BEL
  module Language
    module Version2
      module Functions
        # ProteinAbundance
        class ProteinAbundance
          include BEL::Language::Version2
          extend Function

          SHORT       = :p
          LONG        = :proteinAbundance
          RETURN_TYPE = ReturnTypes::ProteinAbundance
          DESCRIPTION = 'Denotes the abundance of a protein'.freeze
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
