require_relative '../../function'

module BEL
  module Language
    module Version1
      # Ribosylationactivity
      class Ribosylationactivity
        include Function

        SHORT       = :ribo
        LONG        = :ribosylationActivity
        RETURN_TYPE = :a
        DESCRIPTION = 'Denotes the frequency or abundance of events in which a
member acts to perform post-translational modification of proteins'.freeze
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
