require_relative '../../function'

module BEL
  module Language
    module Version1
      # Catalyticactivity
      class Catalyticactivity
        include Function

        SHORT       = :cat
        LONG        = :catalyticActivity
        RETURN_TYPE = :a
        DESCRIPTION = 'Denotes the frequency or abundance of events where a
member acts as an enzymatic catalyst of biochecmial reactions'.freeze
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
