require_relative 'molecular_activity'

module BEL
  module Language
    module Version1
      module ReturnTypes
        # KinaseActivity return type.
        class KinaseActivity < MolecularActivity
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != KinaseActivity
            :kinase_activity
          end
        end
      end
    end
  end
end
