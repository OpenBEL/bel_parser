require_relative '../../version1_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version1_0
      module Relationships
        # Analogous:  +A analogous B+ -  For terms A and B, +A analogousTo
        # B+ indicates that A and B represent abundances or molecular
        # activities in different species which function in a similar
        # manner.
        class Analogous
          extend Relationship

          SHORT       = :analogous
          LONG        = :analogous
          DESCRIPTION = <<-DOC
Analogous:  +A analogous B+ -  For terms A and B, +A analogousTo
B+ indicates that A and B represent abundances or molecular
activities in different species which function in a similar
manner.
DOC

          def self.short
            SHORT
          end

          def self.long
            LONG
          end

          def self.description
            DESCRIPTION
          end

          def self.genomic?
            true
          end
        end
      end
    end
  end
end
