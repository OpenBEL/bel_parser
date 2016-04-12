require_relative '../../version1_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version1_0
      module Relationships
        # HasMembers:  +A hasMembers (B, C, D)+ -  The hasMembers
        # relationship is a special form which enables the assignment of
        # multiple member classes in a single statement where the object
        # of the statement is a set of abundance terms. A statement
        # using hasMembers is exactly equivalent to multiple hasMember
        # statements. A term may not appear in both the subject and
        # object of a of the same hasMembers statement. For the abundance
        # terms A, B, C and D, +A hasMembers B, C, D+ indicates that A
        # is defined by its member abundance classes B, C and D.
        class HasMembers
          extend Relationship

          SHORT       = :hasMembers
          LONG        = :hasMembers
          DESCRIPTION = ' +A hasMembers (B, C, D)+ -  The hasMembers
          elationship is a special form which enables the
          ssignment of multiple member classes in a single
          tatement where the object of the statement is a set
          f abundance terms. A statement using hasMembers
          s exactly equivalent to multiple hasMember
          tatements. A term may not appear in both the
          ubject and object of a of the same hasMembers
          tatement. For the abundance terms A, B, C and D,
          A hasMembers B, C, D+ indicates that A is defined
          y its member abundance classes B, C and D.'.freeze

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
