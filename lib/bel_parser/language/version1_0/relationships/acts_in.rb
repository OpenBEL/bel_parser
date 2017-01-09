require_relative '../../version1_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version1_0
      module Relationships
        # ActsIn:  +A actsIn f(A)+ -  This relationship links
        # an abundance term to the activity term for the same
        # abundance. This relationship is direct because it is a _self_
        # relationship, the abundance acts in its own activity. For
        # protein abundance p(A) and its molecular activity kin(p(A),
        # +p(A) actsIn kin(p(A))+. This relationship is introduced by the
        # BEL Compiler and may not be used by statements in BEL documents.
        class ActsIn
          extend Relationship

          SHORT       = :actsIn
          LONG        = :actsIn
          DESCRIPTION = <<-DOC
ActsIn:  +A actsIn f(A)+ -  This relationship links
an abundance term to the activity term for the same
abundance. This relationship is direct because it is a _self_
relationship, the abundance acts in its own activity. For
protein abundance p(A) and its molecular activity kin(p(A),
+p(A) actsIn kin(p(A))+. This relationship is introduced by the
BEL Compiler and may not be used by statements in BEL documents.
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

          def self.self?
            true
          end
        end
      end
    end
  end
end
