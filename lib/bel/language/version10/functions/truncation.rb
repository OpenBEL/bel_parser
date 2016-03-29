require_relative '../../function'

module BEL
  module Language
    module Version10
      # Truncation
      class Truncation
        include Function

        SHORT       = :trunc
        LONG        = :truncation
        RETURN_TYPE = :trunc
        DESCRIPTION = 'Indicates an abundance of proteins with truncation
sequence variants'.freeze
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
