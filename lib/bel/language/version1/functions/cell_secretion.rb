require_relative '../../function'

module BEL
  module Language
    module Version1
      module Functions
        # CellSecretion
        class CellSecretion
          include Function

          SHORT       = :sec
          LONG        = :cellSecretion
          RETURN_TYPE = :a
          DESCRIPTION = 'Denotes the frequency or abundance of events in which
members of an abundance move from cells to regions outside of the
cells'.freeze
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
