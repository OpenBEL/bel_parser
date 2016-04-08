require_relative '../../version1'
require_relative '../../relationship'

module BELParser
  module Language
    module Version1
      module Relationships
        # Association:  +A -- B+ -  For terms A and B, +A association B+ or +A -- B+ indicates that A and B are associated in an unspecified manner. This relationship is used when not enough information about the association is available to describe it using more specific relationships, like increases or positiveCorrelation.
        class Association
          extend Relationship

          SHORT       = :'--'
          LONG        = :association
          DESCRIPTION = ' +A -- B+ -  For terms A and B, +A association B+ or +A -- B+ indicates that A and B are associated in an unspecified manner. This relationship is used when not enough information about the association is available to describe it using more specific relationships, like increases or positiveCorrelation.'.freeze

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
