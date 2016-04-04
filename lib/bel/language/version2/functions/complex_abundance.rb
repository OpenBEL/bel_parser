require_relative '../../function'
require_relative '../return_types/complex_abundance'

module BEL
  module Language
    module Version2
      module Functions
        # ComplexAbundance
        class ComplexAbundance
          include BEL::Language::Version2
          extend Function

          SHORT       = :complex
          LONG        = :complexAbundance
          RETURN_TYPE = ReturnTypes::ComplexAbundance
          DESCRIPTION = 'Denotes the abundance of a molecular complex'.freeze
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
