require_relative '../../function'
require_relative '../return_types/gene_abundance'

module BEL
  module Language
    module Version2
      module Functions
        # RnaAbundance
        class RnaAbundance
          include BEL::Language::Version2
          extend Function

          SHORT       = :r
          LONG        = :rnaAbundance
          RETURN_TYPE = ReturnTypes::GeneAbundance
          DESCRIPTION = 'Denotes the abundance of a gene'.freeze
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
