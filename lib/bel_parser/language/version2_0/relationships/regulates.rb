require_relative '../../version2_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version2_0
      module Relationships
        # Regulates:  +A regulates B+ - For terms A and B, A regulates
        # B or A reg B indicate that A is reported to have an effect on
        # B, but information is missing about whether A increases B or
        # A decreases B. This relationship provides more information
        # than association, because the upstream entity (source term)
        # and downstream entity (target term) can be assigned.
        class Regulates
          extend Relationship

          SHORT       = :reg
          LONG        = :regulates
          DESCRIPTION = '+A regulates B+ - For terms A and B, A regulates
           or A reg B indicate that A is reported to
          ave an effect on B, but information is missing
          bout whether A increases B or A decreases
          . This relationship provides more information
          han association, because the upstream entity
          source term) and downstream entity (target term)
          an be assigned.'.freeze

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
        end
      end
    end
  end
end
