require_relative 'abundance'

module BEL
  module Language
    module Version1
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
