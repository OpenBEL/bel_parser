require_relative '../../function'

module BEL
  module Language
    module Version10
      # Gtpboundactivity
      class Gtpboundactivity
        include Function

        SHORT       = :gtp
        LONG        = :gtpBoundActivity
        RETURN_TYPE = :a
        DESCRIPTION = 'Denotes the frequency or abundance of events in which a
member of a G-protein abundance is GTP-bound'.freeze
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
