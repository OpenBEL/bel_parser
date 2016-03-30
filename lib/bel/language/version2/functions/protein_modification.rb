require_relative '../../function'

module BEL
  module Language
    module Version2
      module Functions
        # ProteinModification
        class ProteinModification
          include Function

          SHORT       = :pmod
          LONG        = :proteinModification
          RETURN_TYPE = :pmod
          DESCRIPTION = 'Denotes a covalently modified protein abundance'.freeze
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
