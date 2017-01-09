require_relative '../../version2_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version2_0
      module Relationships
        # HasVariant:  +p(A) hasVariant p(A, sub(G, 12, V))+ -
        # This relationship links abundance terms modified by the
        # +substitution()+, +fusion()+, or +truncation()+ functions to
        # the unmodified abundance term. This relationship is introduced
        # by the BEL Compiler and does not need to be used by statements
        # in BEL documents.
        class HasVariant
          extend Relationship

          SHORT       = :hasVariant
          LONG        = :hasVariant

          DESCRIPTION = <<-DOC
HasVariant:  +p(A) hasVariant p(A, sub(G, 12, V))+ -
This relationship links abundance terms modified by the
+substitution()+, +fusion()+, or +truncation()+ functions to
the unmodified abundance term. This relationship is introduced
by the BEL Compiler and does not need to be used by statements
in BEL documents.
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

          def self.injected?
            true
          end
        end
      end
    end
  end
end
