require_relative '../../function'

module BEL
  module Language
    module Version10
      # Products
      class Products
        include Function

        SHORT       = :products
        LONG        = :products
        RETURN_TYPE = :products
        DESCRIPTION = 'Denotes the products of a reaction'.freeze
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
