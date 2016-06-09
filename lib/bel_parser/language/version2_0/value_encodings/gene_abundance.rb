require_relative 'abundance'

module BELParser
  module Language
    module Version2_0
      module ValueEncodings
        # GeneAbundance value encoding.
        class GeneAbundance < Abundance
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != GeneAbundance
            :G
          end
        end
      end
    end
  end
end
