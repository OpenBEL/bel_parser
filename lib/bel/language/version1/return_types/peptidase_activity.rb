require_relative 'molecular_activity'

module BEL
  module Language
    module Version1
      module ReturnTypes
        # PeptidaseActivity return type.
        class PeptidaseActivity < MolecularActivity
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != PeptidaseActivity
            :peptidase_activity
          end
        end
      end
    end
  end
end
