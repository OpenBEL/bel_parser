require_relative '../../version2_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version2_0
      module Relationships
        # DirectlyDecreases:  +A =| B+ -  For terms A and B, +A
        # directlyDecreases B or A =| B+ indicates A decreases B and that
        # the mechanism of the causal relationship is based on physical
        # interaction of entities related to A and B. This is a direct
        # version of the decreases relationship.
        class DirectlyDecreases
          extend Relationship

          SHORT       = :'=|'
          LONG        = :directlyDecreases
          DESCRIPTION = ' +A =| B+ -  For terms A and B,
          A directlyDecreases B or A =| B+ indicates A
          ecreases B and that the mechanism of the causal
          elationship is based on physical interaction
          f entities related to A and B. This is a direct
          ersion of the decreases relationship.'.freeze

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
