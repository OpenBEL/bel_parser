require_relative 'any'

module BELParser
  module Language
    module Version2_0
      module ValueEncodings
        # Abundance value encoding.
        class Abundance < Any
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != Abundance
            :A
          end
        end
      end
    end
  end
end
