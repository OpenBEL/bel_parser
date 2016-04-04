require_relative '../../function'
require_relative '../return_types/abundance'

module BEL
  module Language
    module Version2
      module Functions
        # CellSecretion
        class CellSecretion
          include BEL::Language::Version2
          extend Function

          SHORT       = :sec
          LONG        = :cellSecretion
          RETURN_TYPE = ReturnTypes::Abundance
          DESCRIPTION = 'Denotes the frequency or abundance of events in which
members of an abundance move from cells to regions outside of the
cells'.freeze
          SIGNATURES  = [].freeze

          def self.short
            SHORT
          end

          def self.long
            LONG
          end

          def self.return_type
            RETURN_TYPE
          end

          def self.description
            DESCRIPTION
          end

          def self.signatures
            SIGNATURES
          end
        end
      end
    end
  end
end
