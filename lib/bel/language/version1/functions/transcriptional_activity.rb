require_relative '../../function'
require_relative '../return_types/transcriptional_activity'

module BEL
  module Language
    module Version1
      module Functions
        # TranscriptionalActivity
        class TranscriptionalActivity
          include BEL::Language::Version1
          extend Function

          SHORT       = :tscript
          LONG        = :transcriptionalActivity
          RETURN_TYPE = ReturnTypes::TranscriptionalActivity
          DESCRIPTION = 'Denotes the frequency or abundance of events in which a
  member directly acts to control transcription of genes'.freeze
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
