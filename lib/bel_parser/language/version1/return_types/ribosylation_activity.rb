require_relative 'molecular_activity'

module BELParser
  module Language
    module Version1
      module ReturnTypes
        # RibosylationActivity return type.
        class RibosylationActivity < MolecularActivity
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != RibosylationActivity
            :ribosylation_activity
          end
        end
      end
    end
  end
end
