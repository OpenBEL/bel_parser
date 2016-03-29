require_relative '../../function'

module BEL
  module Language
    module Version1
      # Abundance
      class Abundance
        include Function

        SHORT       = :a
        LONG        = :abundance
        RETURN_TYPE = :a
        DESCRIPTION = 'Denotes the abundance of an entity'.freeze
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
