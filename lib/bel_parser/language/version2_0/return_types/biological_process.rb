require_relative 'any'

module BELParser
  module Language
    module Version2_0
      module ReturnTypes
        # Biological process return type.
        class BiologicalProcess < Any
          def self.to_sym
            raise_not_implemented(__method__) if self != BiologicalProcess
            :biologicalProcess
          end
        end
      end
    end
  end
end
