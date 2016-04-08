require_relative 'any'

module BELParser
  module Language
    module Version1_0
      module ReturnTypes
        # Substitution return type.
        class Substitution < Any
          def self.to_sym
            raise_not_implemented(__method__) if self != Substitution
            :substitution
          end
        end
      end
    end
  end
end
