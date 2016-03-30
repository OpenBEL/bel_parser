require_relative 'any'

module BEL
  module Language
    module Version1
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
