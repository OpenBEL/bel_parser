require_relative '../../version2_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version2_0
      module Relationships
        # Orthologous:  +A orthologous B+ -  For geneAbundance terms A and B, +A orthologousTo B+ indicates that A and B represent abundances of genes in different species which are sequence similar and which are therefore presumed to share a common ancestral gene. For example, +g(HGNC:AKT1) orthologousTo g(MGI:AKT1)+ indicates that the mouse and human AKT1 genes are orthologous.
        class Orthologous
          extend Relationship

          SHORT       = :orthologous
          LONG        = :orthologous
          DESCRIPTION = ' +A orthologous B+ -  For geneAbundance terms A and B, +A orthologousTo B+ indicates that A and B represent abundances of genes in different species which are sequence similar and which are therefore presumed to share a common ancestral gene. For example, +g(HGNC:AKT1) orthologousTo g(MGI:AKT1)+ indicates that the mouse and human AKT1 genes are orthologous.'.freeze

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
