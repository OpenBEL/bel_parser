require_relative '../../version1_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version1_0
      module Relationships
        # BiomarkerFor:  +A biomarkerFor P+ -  For term A and process term
        # P, +A biomarkerFor P+ indicates that changes in or detection
        # of A is used in some way to be a biomarker for pathology or
        # biological process P.
        class BiomarkerFor
          extend Relationship

          SHORT       = :biomarkerFor
          LONG        = :biomarkerFor
          DESCRIPTION = <<-DOC
BiomarkerFor:  +A biomarkerFor P+ -  For term A and process term
P, +A biomarkerFor P+ indicates that changes in or detection
of A is used in some way to be a biomarker for pathology or
biological process P.
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

          def self.directed?
            true
          end
        end
      end
    end
  end
end
