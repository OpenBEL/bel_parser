require_relative 'activity'

module BEL
  module Language
    module Version1
      module ReturnTypes
        # TransportActivity return type.
        class TranscriptionalActivity < Activity
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
