require_relative '../../version1_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version1_0
      module Relationships
        # IsA:  +A isA B+ -  For terms A and B, +A isA B+ indicates that A is a subset of B. All terms in BEL represent classes, but given that classes implicitly have instances, one can also interpret +A isA B+ to mean that any instance of A must also be an instance of B. This relationship can be used to represent GO and MeSH hierarchies: +pathology(MESH:Psoriasis) isA pathology(MESH:"Skin Diseases")+
        class IsA
          extend Relationship

          SHORT       = :isA
          LONG        = :isA
          DESCRIPTION = ' +A isA B+ -  For terms A and B, +A isA B+ indicates that A is a subset of B. All terms in BEL represent classes, but given that classes implicitly have instances, one can also interpret +A isA B+ to mean that any instance of A must also be an instance of B. This relationship can be used to represent GO and MeSH hierarchies: +pathology(MESH:Psoriasis) isA pathology(MESH:"Skin Diseases")+'.freeze

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
