require_relative '../../function'

module BEL
  module Language
    module Version1
      # Biologicalprocess
      class Biologicalprocess
        include Function

        SHORT       = :bp
        LONG        = :biologicalProcess
        RETURN_TYPE = :bp
        DESCRIPTION = 'Denotes a process or population of events'.freeze
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
