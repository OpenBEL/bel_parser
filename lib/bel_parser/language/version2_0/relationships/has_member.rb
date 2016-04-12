require_relative '../../version2_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version2_0
      module Relationships
        # HasMember:  +A hasMember A1+ -  For term abundances A and B,
        # +A hasMember B+ designates B as a member class of A. A member
        # class is a distinguished sub-class. A is defined as a group
        # by all of the members assigned to it. The member classes may
        # or may not be overlapping and may or may not entirely cover
        # all instances of A. A term may not appear in both the subject
        # and object of the same hasMember statement.
        class HasMember
          extend Relationship

          SHORT       = :hasMember
          LONG        = :hasMember
          DESCRIPTION = ' +A hasMember A1+ -  For term abundances A and B, +A hasMember B+ designates B as a member class of A. A member class is a distinguished sub-class. A is defined as a group by all of the members assigned to it. The member classes may or may not be overlapping and may or may not entirely cover all instances of A. A term may not appear in both the subject and object of the same hasMember statement.'.freeze

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
