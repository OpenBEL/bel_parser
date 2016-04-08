require_relative '../../version1'
require_relative '../../relationship'

module BELParser
  module Language
    module Version1
      module Relationships
        # Analogous:  +A analogous B+ -  For terms A and B, +A analogousTo B+ indicates that A and B represent abundances or molecular activities in different species which function in a similar manner.
        class Analogous
          extend Relationship

          SHORT       = :analogous
          LONG        = :analogous
          DESCRIPTION = ' +A analogous B+ -  For terms A and B, +A analogousTo B+ indicates that A and B represent abundances or molecular activities in different species which function in a similar manner.'.freeze

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
