require_relative 'any'

module BELParser
  module Language
    module Version2
      module ReturnTypes
        # Variant return type.
        class Variant < Any
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != Variant
            :variant
          end
        end
      end
    end
  end
end
