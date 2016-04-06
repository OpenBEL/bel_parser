require_relative 'molecular_activity'

module BELParser
  module Language
    module Version1
      module ReturnTypes
        # TransportActivity return type.
        class TranscriptionalActivity < MolecularActivity
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != TranscriptionalActivity
            :transcriptional_activity
          end
        end
      end
    end
  end
end
