require_relative '../../version1_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version1_0
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
          DESCRIPTION = ' +A reactantIn reaction(reactants(A),
          roducts(B))+ -  This relationship links abundance
          erms from the +reactants(<list>)+ in a reaction
          o the reaction. This is a direct relationship
          ecause it is a _self_ relationship. Reactants are
          onsumed directly by a reaction. This relationship
          s introduced by the BEL Compiler and may not be
          sed by statements in BEL documents.'.freeze

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
