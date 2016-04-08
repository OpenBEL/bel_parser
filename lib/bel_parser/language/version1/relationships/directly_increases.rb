require_relative '../../version1'
require_relative '../../relationship'

module BELParser
  module Language
    module Version1
      module Relationships
        # DirectlyIncreases:  +A => B+ -  For terms A and B, +A directlyIncreases B or A => B+ indicate A increases B and that the mechanism of the causal relationship is based on physical interaction of entities related to A and B. This is a direct version of the increases relationship.
        class DirectlyIncreases
          extend Relationship

          SHORT       = :'=>'
          LONG        = :directlyIncreases
          DESCRIPTION = ' +A => B+ -  For terms A and B, +A directlyIncreases B or A => B+ indicate A increases B and that the mechanism of the causal relationship is based on physical interaction of entities related to A and B. This is a direct version of the increases relationship.'.freeze

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
