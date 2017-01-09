require_relative '../../version2_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version2_0
      module Relationships
        # ReactantIn:  +A reactantIn reaction(reactants(A),
        # products(B))+ -  This relationship links abundance
        # terms from the +reactants(<list>)+ in a reaction to the
        # reaction. This is a direct relationship because it is a
        # _self_ relationship. Reactants are consumed directly by a
        # reaction. This relationship is introduced by the BEL Compiler
        # and may not be used by statements in BEL documents.
        class ReactantIn
          extend Relationship

          SHORT       = :reactantIn
          LONG        = :reactantIn

          DESCRIPTION = <<-DOC
ReactantIn:  +A reactantIn reaction(reactants(A),
products(B))+ -  This relationship links abundance
terms from the +reactants(<list>)+ in a reaction to the
reaction. This is a direct relationship because it is a
_self_ relationship. Reactants are consumed directly by a
reaction. This relationship is introduced by the BEL Compiler
and may not be used by statements in BEL documents.
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
