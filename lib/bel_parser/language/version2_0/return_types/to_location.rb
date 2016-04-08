require_relative 'location'

module BELParser
  module Language
    module Version2_0
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
