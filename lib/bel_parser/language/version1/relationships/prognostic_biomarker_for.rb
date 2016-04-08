require_relative '../../version1'
require_relative '../../relationship'

module BELParser
  module Language
    module Version1
      module Relationships
        # PrognosticBiomarkerFor:  +A prognosticBiomarkerFor P+ -  For term A and process term P, +A prognosticBiomarkerFor P+ indicates that changes in or detection of A is used in some way to be a prognostic biomarker for the subsequent development of pathology or biological process P.
        class PrognosticBiomarkerFor
          extend Relationship

          SHORT       = :prognosticBiomarkerFor
          LONG        = :prognosticBiomarkerFor
          DESCRIPTION = ' +A prognosticBiomarkerFor P+ -  For term A and process term P, +A prognosticBiomarkerFor P+ indicates that changes in or detection of A is used in some way to be a prognostic biomarker for the subsequent development of pathology or biological process P.'.freeze

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
