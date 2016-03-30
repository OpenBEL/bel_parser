require_relative '../../function'

module BEL
  module Language
    module Version2
      module Functions
        # Translocation
        class Translocation
          include Function

          SHORT       = :tloc
          LONG        = :translocation
          RETURN_TYPE = :a
          DESCRIPTION = 'Denotes the frequency or abundance of events in which
  members move between locations'.freeze
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
