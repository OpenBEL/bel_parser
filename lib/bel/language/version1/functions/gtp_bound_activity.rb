require_relative '../../function'
require_relative '../return_types/gtp_bound_activity'

module BEL
  module Language
    module Version1
      module Functions
        # GTPBoundActivity
        class GTPBoundActivity
          include BEL::Language::Version1
          extend Function

          SHORT       = :gtp
          LONG        = :gtpBoundActivity
          RETURN_TYPE = ReturnTypes::GTPBoundActivity
          DESCRIPTION = 'Denotes the frequency or abundance of events in which a
  member of a G-protein abundance is GTP-bound'.freeze
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
