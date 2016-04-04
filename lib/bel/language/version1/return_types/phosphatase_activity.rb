require_relative 'activity'

module BEL
  module Language
    module Version1
      module ReturnTypes
        # PhosphataseActivity return type.
        class PhosphataseActivity < Activity
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
