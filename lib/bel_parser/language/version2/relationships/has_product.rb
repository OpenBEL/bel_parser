require_relative '../../version2'
require_relative '../../relationship'

module BELParser
  module Language
    module Version2
      module Relationships
        # HasProduct:  +reaction(reactants(A), products(B)) hasProduct B+ -  This relationship links abundance terms from the +products(<list>)+ in a reaction to the reaction. This is a direct relationship because it is a _self_ relationship. Products are produced directly by a reaction. This relationship is introduced by the BEL Compiler and may not be used by statements in BEL documents.
        class HasProduct
          extend Relationship

          SHORT       = :hasProduct
          LONG        = :hasProduct
          DESCRIPTION = ' +reaction(reactants(A), products(B)) hasProduct B+ -  This relationship links abundance terms from the +products(<list>)+ in a reaction to the reaction. This is a direct relationship because it is a _self_ relationship. Products are produced directly by a reaction. This relationship is introduced by the BEL Compiler and may not be used by statements in BEL documents.'.freeze

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
