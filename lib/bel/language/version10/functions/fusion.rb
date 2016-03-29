require_relative '../../function'

module BEL
  module Language
    module Version10
      # Fusion
      class Fusion
        include Function

        SHORT       = :fus
        LONG        = :fusion
        RETURN_TYPE = :fus
        DESCRIPTION = 'Specifies the abundance of a protein translated from
the fusion of a gene'.freeze
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
