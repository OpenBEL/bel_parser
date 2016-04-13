require_relative '../../version2_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version2_0
      module Relationships
        # NegativeCorrelation:  +A negativeCorrelation B+ -  For terms
        # A and B, +A negativeCorrelation B+ indicates that changes in A
        # and B have been observed to be negatively correlated. The order
        # of the subject and object does not affect the interpretation
        # of the statement, thus B negativeCorrelation A is equivalent
        # to A negativeCorrelation B.
        class NegativeCorrelation
          extend Relationship

          SHORT       = :negativeCorrelation
          LONG        = :negativeCorrelation
          DESCRIPTION = ' +A negativeCorrelation B+ -  For terms A and B,
          A negativeCorrelation B+ indicates that changes
          n A and B have been observed to be negatively
          orrelated. The order of the subject and object does
          ot affect the interpretation of the statement,
          hus B negativeCorrelation A is equivalent to A
          egativeCorrelation B.'.freeze

          def self.short
            SHORT
          end

          def self.long
            LONG
          end

          def self.description
            DESCRIPTION
          end

          def self.correlative?
            true
          end

          def self.decreasing?
            true
          end
        end
      end
    end
  end
end
