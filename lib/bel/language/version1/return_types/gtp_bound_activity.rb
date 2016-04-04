require_relative 'activity'

module BEL
  module Language
    module Version1
      module ReturnTypes
        # GtpBoundActivity return type.
        class GtpBoundActivity < Activity
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != GtpBoundActivity
            :gtp_bound_activity
          end
        end
      end
    end
  end
end
