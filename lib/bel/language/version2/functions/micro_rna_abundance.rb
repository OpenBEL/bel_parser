require_relative '../../function'
require_relative '../return_types/micro_rna_abundance'

module BEL
  module Language
    module Version2
      module Functions
        # MicroRNAAbundance
        class MicroRNAAbundance
          include BEL::Language::Version2
          extend Function

          SHORT       = :m
          LONG        = :microRNAAbundance
          RETURN_TYPE = ReturnTypes::MicroRNAAbundance
          DESCRIPTION = 'Denotes the abundance of a processed, functional
  microRNA'.freeze
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
