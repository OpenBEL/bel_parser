require_relative '../../function'

module BEL
  module Language
    module Version2
      module Functions
        # Variant
        class Variant
          include Function

          SHORT       = :var
          LONG        = :variant
          RETURN_TYPE = :variant
          DESCRIPTION = 'Denotes a sequence variant of the specified
  abundance.'.freeze
          SIGNATURES  = [].freeze

          def short
            SHORT
          end

          def long
            LONG
          end

          def return_type
            RETURN_TYPE
          end

          def description
            DESCRIPTION
          end

          def signatures
            SIGNATURES
          end
        end
      end
    end
  end
end
