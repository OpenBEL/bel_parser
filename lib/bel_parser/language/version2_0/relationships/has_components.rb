require_relative '../../version2_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version2_0
      module Relationships
        # HasComponents:  +A hasComponents (B, C, D)+ -  The hasComponents
        # relationship is a special form which enables the assignment
        # of multiple complex components in a single statement where
        # the object of the statement is a set of abundance terms. A
        # statement using hasComponents is exactly equivalent to multiple
        # hasComponent statements. A term may not appear in both the
        # subject and object of the same hasComponents statement. For
        # the abundance terms A, B, C and D, +A hasComponents B, C, D+
        # indicates that A has components B, C and D.
        class HasComponents
          extend Relationship

          SHORT       = :hasComponents
          LONG        = :hasComponents

          DESCRIPTION = <<-DOC
HasComponents:  +A hasComponents (B, C, D)+ -  The hasComponents
relationship is a special form which enables the assignment
of multiple complex components in a single statement where
the object of the statement is a set of abundance terms. A
statement using hasComponents is exactly equivalent to multiple
hasComponent statements. A term may not appear in both the
subject and object of the same hasComponents statement. For
the abundance terms A, B, C and D, +A hasComponents B, C, D+
indicates that A has components B, C and D.
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

          def self.direct?
            true
          end

          def self.directed?
            true
          end

          def self.listable?
            true
          end
        end
      end
    end
  end
end
