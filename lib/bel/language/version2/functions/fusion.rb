require_relative '../../function'

module BEL
  module Language
    module Version2
      module Functions
        # Fusion
        class Fusion
          include Function

          SHORT       = :fus
          LONG        = :fusion
          RETURN_TYPE = :fus
          DESCRIPTION = 'Denotes a hybrid gene, or gene product formed from two
previously separate genes.'.freeze
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
