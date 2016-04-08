require_relative 'abundance'

module BELParser
  module Language
    module Version1_0
      module ReturnTypes
        # Protein abundance return type.
        class ProteinAbundance < Abundance
          def self.to_sym
            raise_not_implemented(__method__) if self != ProteinAbundance
            :proteinAbundance
          end
        end
      end
    end
  end
end
