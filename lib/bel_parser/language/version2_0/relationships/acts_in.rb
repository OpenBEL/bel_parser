require_relative '../../version2_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version2_0
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
          DESCRIPTION = ' +A actsIn f(A)+ -  This relationship links an abundance term to the activity term for the same abundance. This relationship is direct because it is a _self_ relationship, the abundance acts in its own activity. For protein abundance p(A) and its molecular activity kin(p(A), +p(A) actsIn kin(p(A))+. This relationship is introduced by the BEL Compiler and may not be used by statements in BEL documents.'.freeze

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
