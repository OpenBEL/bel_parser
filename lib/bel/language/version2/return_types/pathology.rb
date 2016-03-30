require_relative 'biological_process'

module BEL
  module Language
    module Version2
      module ReturnTypes
        # Pathology return type.
        class Pathology < BiologicalProcess
          def self.to_sym
            raise_not_implemented(__method__) if self != Pathology
            :pathology
          end
        end
      end
    end
  end
end
