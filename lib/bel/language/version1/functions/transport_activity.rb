require_relative '../../function'

module BEL
  module Language
    module Version1
      # Transportactivity
      class Transportactivity
        include Function

        SHORT       = :tport
        LONG        = :transportActivity
        RETURN_TYPE = :a
        DESCRIPTION = 'Denotes the frequency or abundance of events in which a
member directs acts to enable the directed movement of substances into,
out of, within, or between cells'.freeze
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
