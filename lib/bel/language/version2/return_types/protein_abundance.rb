require_relative 'abundance'

module BEL
  module Language
    module Version2
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
