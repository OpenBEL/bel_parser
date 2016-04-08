require_relative 'molecular_activity'

module BELParser
  module Language
    module Version1_0
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
