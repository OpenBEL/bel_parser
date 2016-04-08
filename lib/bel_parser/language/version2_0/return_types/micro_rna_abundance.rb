require_relative 'abundance'

module BELParser
  module Language
    module Version2_0
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
