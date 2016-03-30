require_relative '../../function'

module BEL
  module Language
    module Version1
      module Functions
        # PeptidaseActivity
        class PeptidaseActivity
          include Function

          SHORT       = :pep
          LONG        = :peptidaseActivity
          RETURN_TYPE = :a
          DESCRIPTION = 'Denotes the frequency or abundance of events in which a
  member acts to cleave a protein'.freeze
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
