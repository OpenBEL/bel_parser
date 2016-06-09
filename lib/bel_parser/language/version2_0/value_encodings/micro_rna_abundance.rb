require_relative 'rna_abundance'

module BELParser
  module Language
    module Version2_0
      module ValueEncodings
        # Micro RNA abundance value encoding.
        class MicroRNAAbundance < RNAAbundance
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != MicroRNAAbundance
            :M
          end
        end
      end
    end
  end
end
