require_relative '../../version2_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version2_0
      module Relationships
        # PositiveCorrelation:  +A positiveCorrelation B+ -  For terms
        # A and B, +A positiveCorrelation B+ indicates that changes in
        # A and B have been observed to be positively correlated, thus B
        # positiveCorrelation A is equivalent to A positiveCorrelation B.
        class PositiveCorrelation
          extend Relationship

          SHORT       = :positiveCorrelation
          LONG        = :positiveCorrelation
          DESCRIPTION = ' +A positiveCorrelation B+ -  For terms A and B, +A positiveCorrelation B+ indicates that changes in A and B have been observed to be positively correlated, thus B positiveCorrelation A is equivalent to A positiveCorrelation B.'.freeze

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
