require_relative '../../function'
require_relative '../return_types/ribosylation_activity'

module BEL
  module Language
    module Version1
      module Functions
        # RibosylationActivity
        class RibosylationActivity
          include BEL::Language::Version1
          extend Function

          SHORT       = :ribo
          LONG        = :ribosylationActivity
          RETURN_TYPE = ReturnTypes::RibosylationActivity
          DESCRIPTION = 'Denotes the frequency or abundance of events in which a
  member acts to perform post-translational modification of proteins'.freeze
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
