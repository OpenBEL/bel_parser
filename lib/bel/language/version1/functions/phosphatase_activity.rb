require_relative '../../function'
require_relative '../return_types/phosphatase_activity'

module BEL
  module Language
    module Version1
      module Functions
        # PhosphataseActivity
        class PhosphataseActivity
          include BEL::Language::Version1
          extend Function

          SHORT       = :phos
          LONG        = :phosphataseActivity
          RETURN_TYPE = ReturnTypes::PhosphataseActivity
          DESCRIPTION = 'Denotes the frequency or abundance of events in which a
  member acts as a phosphatase'.freeze
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
