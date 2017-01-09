require_relative '../../version2_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version2_0
      module Relationships
        # HasProduct:  +reaction(reactants(A), products(B))
        # hasProduct B+ -  This relationship links abundance
        # terms from the +products(<list>)+ in a reaction to the
        # reaction. This is a direct relationship because it is a _self_
        # relationship. Products are produced directly by a reaction. This
        # relationship is introduced by the BEL Compiler and may not be
        # used by statements in BEL documents.
        class HasProduct
          extend Relationship

          SHORT       = :hasProduct
          LONG        = :hasProduct

          DESCRIPTION = <<-DOC
HasProduct:  +reaction(reactants(A), products(B))
hasProduct B+ -  This relationship links abundance
terms from the +products(<list>)+ in a reaction to the
reaction. This is a direct relationship because it is a _self_
relationship. Products are produced directly by a reaction. This
relationship is introduced by the BEL Compiler and may not be
used by statements in BEL documents.
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
