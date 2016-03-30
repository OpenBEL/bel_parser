require_relative 'any'

module BEL
  module Language
    module Version2
      module ReturnTypes
        # Location return type.
        class Location < Any
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != Abundance
            :location
          end
        end
      end
    end
  end
end
