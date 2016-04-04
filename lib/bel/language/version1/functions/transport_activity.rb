require_relative '../../function'
require_relative '../return_types/transport_activity'

module BEL
  module Language
    module Version1
      module Functions
        # TransportActivity
        class TransportActivity
          include BEL::Language::Version1
          extend Function

          SHORT       = :tport
          LONG        = :transportActivity
          RETURN_TYPE = ReturnTypes::TransportActivity
          DESCRIPTION = 'Denotes the frequency or abundance of events in which a
  member directs acts to enable the directed movement of substances into,
  out of, within, or between cells'.freeze
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
