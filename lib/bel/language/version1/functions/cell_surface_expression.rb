require_relative '../../function'

module BEL
  module Language
    module Version1
      # Cellsurfaceexpression
      class Cellsurfaceexpression
        include Function

        SHORT       = :surf
        LONG        = :cellSurfaceExpression
        RETURN_TYPE = :a
        DESCRIPTION = 'Denotes the frequency or abundance of events in which
members of an abundance move to the surface of cells'.freeze
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
