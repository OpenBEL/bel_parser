require_relative 'any'

module BELParser
  module Language
    module Version2_0
      module ValueEncodings
        # Activity value encoding.
        class Activity < Any
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != Activity
            :T
          end
        end
      end
    end
  end
end
