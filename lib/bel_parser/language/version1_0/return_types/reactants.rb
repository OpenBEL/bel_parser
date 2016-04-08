require_relative 'any'

module BELParser
  module Language
    module Version1_0
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
