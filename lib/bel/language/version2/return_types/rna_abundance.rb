require_relative 'abundance'

module BEL
  module Language
    module Version2
      module ReturnTypes
        # RNA abundance return type.
        class RNAAbundance < Abundance
          def self.to_sym
            raise_not_implemented(__method__) if self != RNAAbundance
            :rnaAbundance
          end
        end
      end
    end
  end
end
