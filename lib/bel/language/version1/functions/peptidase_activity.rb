require_relative '../../function'
require_relative '../return_types/peptidase_activity'

module BEL
  module Language
    module Version1
      module Functions
        # PeptidaseActivity
        class PeptidaseActivity
          include BEL::Language::Version1
          extend Function

          SHORT       = :pep
          LONG        = :peptidaseActivity
          RETURN_TYPE = ReturnTypes::PeptidaseActivity
          DESCRIPTION = 'Denotes the frequency or abundance of events in which a
  member acts to cleave a protein'.freeze
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
