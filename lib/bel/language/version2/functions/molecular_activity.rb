require_relative '../../function'

module BEL
  module Language
    module Version2
      module Functions
        # MolecularActivity
        class MolecularActivity
          include Function

          SHORT       = :ma
          LONG        = :molecularActivity
          RETURN_TYPE = :molecularActivity
          DESCRIPTION = 'Denotes the frequency or abundance of events in which a
  member acts as a causal agent at the molecular scale'.freeze
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
