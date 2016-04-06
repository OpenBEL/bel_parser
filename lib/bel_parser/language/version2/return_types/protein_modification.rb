require_relative 'any'

module BELParser
  module Language
    module Version2
      module ReturnTypes
        # Protein modification return type.
        class ProteinModification < Any
          def self.to_sym
            raise_not_implemented(__method__) if self != ProteinModification
            :proteinModification
          end
        end
      end
    end
  end
end
