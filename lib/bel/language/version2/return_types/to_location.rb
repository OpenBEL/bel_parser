require_relative 'location'

module BEL
  module Language
    module Version2
      module ReturnTypes
        # ToLocation return type.
        class ToLocation < Location
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != ToLocation
            :toLocation
          end
        end
      end
    end
  end
end
