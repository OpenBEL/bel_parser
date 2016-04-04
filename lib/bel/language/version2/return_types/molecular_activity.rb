require_relative 'any'

module BEL
  module Language
    module Version2
      module ReturnTypes
        # MolecularActivity return type.
        class MolecularActivity < Any
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != MolecularActivity
            :molecular_activity
          end
        end
      end
    end
  end
end
