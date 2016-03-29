require_relative '../../function'

module BEL
  module Language
    module Version10
      # Complexabundance
      class Complexabundance
        include Function

        SHORT       = :complex
        LONG        = :complexAbundance
        RETURN_TYPE = :complex
        DESCRIPTION = 'Denotes the abundance of a molecular complex'.freeze
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
