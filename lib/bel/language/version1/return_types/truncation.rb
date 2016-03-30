require_relative 'any'

module BEL
  module Language
    module Version1
      module ReturnTypes
        # Truncation return type.
        class Truncation < Any
          def self.to_sym
            raise_not_implemented(__method__) if self != Truncation
            :truncation
          end
        end
      end
    end
  end
end
