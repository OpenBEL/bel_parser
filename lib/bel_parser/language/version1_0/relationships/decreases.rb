require_relative '../../version1_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version1_0
      module Relationships
        # Decreases:  +A -| B+ -  For terms A and B, +A decreases B or
        # A -| B+ indicates that increases in A have been observed to
        # cause decreases in B. +A decreases B+ also represents cases
        # where decreases in A have been observed to cause increases in B,
        # for example, in recording the results of gene deletion or other
        # inhibition experiments. A is a BEL Term and B is either a BEL
        # Term or a BEL Statement. The relationship does not indicate
        # that the changes in A are either necessary for changes in B,
        # nor does it indicate that changes in A are sufficient to cause
        # changes in B.
        class Decreases
          extend Relationship

          SHORT       = :'-|'
          LONG        = :decreases
          DESCRIPTION = ' +A -| B+ -  For terms A and B, +A decreases B
          r A -| B+ indicates that increases in A have been
          bserved to cause decreases in B. +A decreases
          + also represents cases where decreases in A
          ave been observed to cause increases in B, for
          xample, in recording the results of gene deletion
          r other inhibition experiments. A is a BEL Term
          nd B is either a BEL Term or a BEL Statement. The
          elationship does not indicate that the changes
          n A are either necessary for changes in B, nor
          oes it indicate that changes in A are sufficient
          o cause changes in B.'.freeze

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
