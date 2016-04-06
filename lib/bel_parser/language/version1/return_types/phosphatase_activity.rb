require_relative 'molecular_activity'

module BELParser
  module Language
    module Version1
      module ReturnTypes
        # PhosphataseActivity return type.
        class PhosphataseActivity < MolecularActivity
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != PhosphataseActivity
            :phosphatase_activity
          end
        end
      end
    end
  end
end
