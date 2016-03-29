require_relative '../../function'

module BEL
  module Language
    module Version10
      # Substitution
      class Substitution
        include Function

        SHORT       = :sub
        LONG        = :substitution
        RETURN_TYPE = :sub
        DESCRIPTION = 'Indicates the abundance of proteins with amino acid
substitution sequence'.freeze
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
