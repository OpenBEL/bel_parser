require_relative 'any'

module BEL
  module Language
    module Version1
      module ReturnTypes
        # Reactants return type.
        class Reactants < Any
          def self.to_sym
            raise_not_implemented(__method__) if self != Reactants
            :reactants
          end
        end
      end
    end
  end
end
