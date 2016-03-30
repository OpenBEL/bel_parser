require_relative '../../function'

module BEL
  module Language
    module Version2
      module Functions
        # Location
        class Location
          include Function

          SHORT       = :loc
          LONG        = :location
          RETURN_TYPE = :location
          DESCRIPTION = 'Denotes the cellular location of the abundance.'.freeze
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
