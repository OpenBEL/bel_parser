require_relative 'any'

module BEL
  module Language
    module Version1
      module ReturnTypes
        # Fusion return type.
        class Fusion < Any
          def self.to_sym
            raise_not_implemented(__method__) if self != Fusion
            :fusion
          end
        end
      end
    end
  end
end
