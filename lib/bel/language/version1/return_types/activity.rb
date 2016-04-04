require_relative 'any'

module BEL
  module Language
    module Version1
      module ReturnTypes
        # Activity return type.
        class Activity < Any
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != Activity
            :activity
          end
        end
      end
    end
  end
end
