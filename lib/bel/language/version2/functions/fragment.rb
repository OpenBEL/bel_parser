require_relative '../../function'

module BEL
  module Language
    module Version2
      module Functions
        # Fragment
        class Fragment
          include Function

          SHORT       = :frag
          LONG        = :fragment
          RETURN_TYPE = :fragment
          DESCRIPTION = 'Denotes a protein fragment, e.g., a product of
  proteolytic cleavage.'.freeze
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
end
