require_relative '../../version1_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version1_0
      module Relationships
        # TranscribedTo:  +G :> R+ -  For rnaAbundance term R and
        # geneAbundance term G, +G transcribedTo R+ or +G :> R+ indicates
        # that members of R are produced by the transcription of members
        # of G. For example: +g(HGNC:AKT1) :> r(HGNC:AKT1)+ indicates
        # that the human AKT1 RNA is transcribed from the human AKT1 gene.
        class TranscribedTo
          extend Relationship

          SHORT       = :':>'
          LONG        = :transcribedTo
          DESCRIPTION = ' +G :> R+ -  For rnaAbundance term R and geneAbundance term G, +G transcribedTo R+ or +G :> R+ indicates that members of R are produced by the transcription of members of G. For example: +g(HGNC:AKT1) :> r(HGNC:AKT1)+ indicates that the human AKT1 RNA is transcribed from the human AKT1 gene.'.freeze

          def self.short
            SHORT
          end

          def self.long
            LONG
          end

          def self.description
            DESCRIPTION
          end
        end
      end
    end
  end
end
