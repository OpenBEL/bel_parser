require_relative '../../function'

module BEL
  module Language
    module Version10
      # Transcriptionalactivity
      class Transcriptionalactivity
        include Function

        SHORT       = :tscript
        LONG        = :transcriptionalActivity
        RETURN_TYPE = :a
        DESCRIPTION = 'Denotes the frequency or abundance of events in which a
member directly acts to control transcription of genes'.freeze
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
