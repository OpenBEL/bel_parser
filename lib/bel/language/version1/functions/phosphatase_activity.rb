require_relative '../../function'

module BEL
  module Language
    module Version1
      # Phosphataseactivity
      class Phosphataseactivity
        include Function

        SHORT       = :phos
        LONG        = :phosphataseActivity
        RETURN_TYPE = :a
        DESCRIPTION = 'Denotes the frequency or abundance of events in which a
member acts as a phosphatase'.freeze
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
