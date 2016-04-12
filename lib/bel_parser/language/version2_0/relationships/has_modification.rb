require_relative '../../version2_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version2_0
      module Relationships
        # HasModification:  +p(A) hasModification p(A, pmod(P, S, 473))+
        # -  This relationship links abundance terms modified by the
        # +pmod()+ function to the unmodified abundance term. This is a
        # direct relationship because it is a _self_ relationship. This
        # relationship is introduced by the BEL Compiler and may not be
        # used by statements in BEL documents.
        class HasModification
          extend Relationship

          SHORT       = :hasModification
          LONG        = :hasModification
          DESCRIPTION = ' +p(A) hasModification p(A, pmod(P, S, 473))+ -  This relationship links abundance terms modified by the +pmod()+ function to the unmodified abundance term. This is a direct relationship because it is a _self_ relationship. This relationship is introduced by the BEL Compiler and may not be used by statements in BEL documents.'.freeze

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
