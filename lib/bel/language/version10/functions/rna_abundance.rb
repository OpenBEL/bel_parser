require_relative '../../function'

module BEL
  module Language
    module Version10
      # Rnaabundance
      class Rnaabundance
        include Function

        SHORT       = :r
        LONG        = :rnaAbundance
        RETURN_TYPE = :g
        DESCRIPTION = 'Denotes the abundance of a gene'.freeze
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
