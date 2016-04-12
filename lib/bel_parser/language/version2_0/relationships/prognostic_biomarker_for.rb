require_relative '../../version2_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version2_0
      module Relationships
        # PrognosticBiomarkerFor:  +A prognosticBiomarkerFor P+ -
        # For term A and process term P, +A prognosticBiomarkerFor P+
        # indicates that changes in or detection of A is used in some
        # way to be a prognostic biomarker for the subsequent development
        # of pathology or biological process P.
        class PrognosticBiomarkerFor
          extend Relationship

          SHORT       = :prognosticBiomarkerFor
          LONG        = :prognosticBiomarkerFor
          DESCRIPTION = ' +A prognosticBiomarkerFor P+ -  For term A
          nd process term P, +A prognosticBiomarkerFor P+
          ndicates that changes in or detection of A is used
          n some way to be a prognostic biomarker for the
          ubsequent development of pathology or biological
          rocess P.'.freeze

          def self.short
            SHORT
          end

          def self.long
            LONG
          end

          def self.description
            DESCRIPTION
          end

          def self.deprecated?
            true
          end
        end
      end
    end
  end
end
