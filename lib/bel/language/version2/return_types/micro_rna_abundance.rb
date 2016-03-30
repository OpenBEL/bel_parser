require_relative 'abundance'

module BEL
  module Language
    module Version2
      module ReturnTypes
        # Micro RNA abundance return type.
        class MicroRNAAbundance < Abundance
          def self.to_sym
            raise_not_implemented(__method__) if self != MicroRNAAbundance
            :microRNAAbundance
          end
        end
      end
    end
  end
end
