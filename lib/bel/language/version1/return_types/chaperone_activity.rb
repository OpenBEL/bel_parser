require_relative 'molecular_activity'

module BEL
  module Language
    module Version1
      module ReturnTypes
        # ChaperoneActivity return type.
        class ChaperoneActivity < MolecularActivity
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != ChaperoneActivity
            :chaperone_activity
          end
        end
      end
    end
  end
end
