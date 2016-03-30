require_relative '../../function'

module BEL
  module Language
    module Version1
      module Functions
        # ChaperoneActivity
        class ChaperoneActivity
          include Function

          SHORT       = :chap
          LONG        = :chaperoneActivity
          RETURN_TYPE = :a
          DESCRIPTION = 'Denotes the frequency or abundance of events
  in which a member binds to some substrate and acts as a chaperone for
  the substrate'.freeze
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
