require_relative 'location'

module BEL
  module Language
    module Version2
      module ReturnTypes
        # FromLocation return type.
        class FromLocation < Location
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != FromLocation
            :fromLocation
          end
        end
      end
    end
  end
end
