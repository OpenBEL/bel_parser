require_relative '../../version2_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version2_0
      module Relationships
        # DirectlyIncreases:  +A => B+ -  For terms A and B, +A
        # directlyIncreases B or A => B+ indicate A increases B and that
        # the mechanism of the causal relationship is based on physical
        # interaction of entities related to A and B. This is a direct
        # version of the increases relationship.
        class DirectlyIncreases
          extend Relationship

          SHORT       = :'=>'
          LONG        = :directlyIncreases

          DESCRIPTION = <<-DOC
DirectlyIncreases:  +A => B+ -  For terms A and B, +A
directlyIncreases B or A => B+ indicate A increases B and that
the mechanism of the causal relationship is based on physical
interaction of entities related to A and B. This is a direct
version of the increases relationship.
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

          def self.causal?
            true
          end

          def self.increasing?
            true
          end

          def self.direct?
            true
          end

          def self.directed?
            true
          end
        end
      end
    end
  end
end
