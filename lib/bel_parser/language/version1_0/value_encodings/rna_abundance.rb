require_relative 'abundance'

module BELParser
  module Language
    module Version1_0
      module ValueEncodings
        # RNAAbundance value encoding.
        class RNAAbundance < Abundance
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != RNAAbundance
            :R
          end
        end
      end
    end
  end
end
