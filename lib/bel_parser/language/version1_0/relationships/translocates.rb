require_relative '../../version1_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version1_0
      module Relationships
        # Translocates:  +translocation(A, ns1:v1, ns2:v2) translocates
        # A+ -  This relationship links the abundance term in a
        # +translocation()+ to the translocation. This relationship is
        # direct because it is a _self_ relationship. The translocated
        # abundance is directly acted on by the translocation
        # process. This relationship is introduced by the BEL Compiler
        # and may not be used by statements in BEL documents.
        class Translocates
          extend Relationship

          SHORT       = :translocates
          LONG        = :translocates

          DESCRIPTION = <<-DOC
Translocates:  +translocation(A, ns1:v1, ns2:v2) translocates
A+ -  This relationship links the abundance term in a
+translocation()+ to the translocation. This relationship is
direct because it is a _self_ relationship. The translocated
abundance is directly acted on by the translocation
process. This relationship is introduced by the BEL Compiler
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
