require_relative 'abundance'

module BELParser
  module Language
    module Version2_0
      module ReturnTypes
        # Gene abundance return type.
        class GeneAbundance < Abundance
          def self.to_sym
            raise_not_implemented(__method__) if self != GeneAbundance
            :geneAbundance
          end
        end
      end
    end
  end
end
