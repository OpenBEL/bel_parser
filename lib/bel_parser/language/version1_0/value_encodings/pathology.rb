require_relative '../../version1_0'
require_relative 'biological_process'

module BELParser
  module Language
    module Version1_0
      module ValueEncodings
        # Pathology value encoding.
        class Pathology < BiologicalProcess
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != Pathology
            :O
          end
        end
      end
    end
  end
end
