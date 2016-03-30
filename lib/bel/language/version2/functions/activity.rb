require_relative '../../function'

module BEL
  module Language
    module Version2
      module Functions
        # Activity
        class Activity
          include Function

          SHORT       = :act
          LONG        = :activity
          RETURN_TYPE = :activity
          DESCRIPTION = 'Specify events resulting from the molecular activity of
  an abundance. The activity function provides distinct terms that enable
  differentiation of the increase or decrease of the molecular activity of a
  protein from changes in the abundance of the protein.'.freeze
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
