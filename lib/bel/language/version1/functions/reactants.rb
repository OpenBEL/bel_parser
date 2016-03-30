require_relative '../../function'

module BEL
  module Language
    module Version1
      module Functions
        # Reactants
        class Reactants
          include Function

          SHORT       = :reactants
          LONG        = :reactants
          RETURN_TYPE = :reactants
          DESCRIPTION = 'Denotes the reactants of a reaction'.freeze
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
