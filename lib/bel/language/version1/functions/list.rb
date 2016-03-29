require_relative '../../function'

module BEL
  module Language
    module Version1
      # List
      class List
        include Function

        SHORT       = :list
        LONG        = :list
        RETURN_TYPE = :list
        DESCRIPTION = 'Groups a list of terms together'.freeze
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
