require_relative '../../version1_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version1_0
      module Relationships
        # SubProcessOf:  +A subProcessOf B+ -  For process, activity, or
        # transformation term A and process term B, +A subProcessOf B+
        # indicates that instances of process B, by default, include
        # one or more instances of A in their composition. For
        # example, the reduction of HMG-CoA to mevalonate is
        # a subprocess of cholesterol biosynthesis: <pre> <code>
        # rxn(reactants(a(CHEBI:"(S)-3-hydroxy-3-methylglutaryl-CoA"),\
        # a(CHEBI:NADPH), a(CHEBI:hydron)), products(a(CHEBI:Mevalonate),\
        # a(CHEBI:"CoA-SH"), a(CHEBI:"NADP+"))) subProcessOf
        # bp(GO:"cholesterol\ biosynthetic process") </code> </pre>
        class SubProcessOf
          extend Relationship

          SHORT       = :subProcessOf
          LONG        = :subProcessOf
          DESCRIPTION = ' +A subProcessOf B+ -  For process, activity,
          r transformation term A and process term B,
          A subProcessOf B+ indicates that instances
          f process B, by default, include one or more
          nstances of A in their composition. For example,
          he reduction of HMG-CoA to mevalonate is a
          ubprocess of cholesterol biosynthesis: <pre> <code>
          xn(reactants(a(CHEBI:"(S)-3-hydroxy-3-methylglutaryl-CoA"),\
          (CHEBI:NADPH), a(CHEBI:hydron)),
          roducts(a(CHEBI:Mevalonate),\ a(CHEBI:"CoA-SH"),
          (CHEBI:"NADP+"))) subProcessOf bp(GO:"cholesterol\
          iosynthetic process") </code> </pre>'.freeze

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
