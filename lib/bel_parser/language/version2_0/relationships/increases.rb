require_relative '../../version2_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version2_0
      module Relationships
        # Increases:  +A -> B+ -  For terms A and B, +A increases B or
        # A -> B+ indicates that increases in A have been observed to
        # cause increases in B. +A increases B+ also represents cases
        # where decreases in A have been observed to cause decreases in B,
        # for example, in recording the results of gene deletion or other
        # inhibition experiments. A is a BEL Term and B is either a BEL
        # Term or a BEL Statement. The relationship does not indicate
        # that the changes in A are either necessary for changes in B,
        # nor does it indicate that changes in A are sufficient to cause
        # changes in B.
        class Increases
          extend Relationship

          SHORT       = :'->'
          LONG        = :increases
          DESCRIPTION = ' +A -> B+ -  For terms A and B, +A increases B
          r A -> B+ indicates that increases in A have been
          bserved to cause increases in B. +A increases
          + also represents cases where decreases in A
          ave been observed to cause decreases in B, for
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

          def self.causal?
            true
          end

          def self.directed?
            true
          end

          def self.increasing?
            true
          end
        end
      end
    end
  end
end
