require_relative '../../function'

module BEL
  module Language
    module Version2
      module Functions
        # Degradation
        class Degradation
          include Function

          SHORT       = :deg
          LONG        = :degradation
          RETURN_TYPE = :a
          DESCRIPTION = 'Denotes the frequency or abundance of events in which a
  member is degraded in some way such that it is no longer a member'.freeze
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
