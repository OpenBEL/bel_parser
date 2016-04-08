require_relative '../../version1'
require_relative '../../relationship'

module BELParser
  module Language
    module Version1
      module Relationships
        # BiomarkerFor:  +A biomarkerFor P+ -  For term A and process term P, +A biomarkerFor P+ indicates that changes in or detection of A is used in some way to be a biomarker for pathology or biological process P.
        class BiomarkerFor
          extend Relationship

          SHORT       = :biomarkerFor
          LONG        = :biomarkerFor
          DESCRIPTION = ' +A biomarkerFor P+ -  For term A and process term P, +A biomarkerFor P+ indicates that changes in or detection of A is used in some way to be a biomarker for pathology or biological process P.'.freeze

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
