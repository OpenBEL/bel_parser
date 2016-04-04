require_relative '../../function'
require_relative '../return_types/reactants'

module BEL
  module Language
    module Version1
      module Functions
        # Reactants
        class Reactants
          include BEL::Language::Version1
          extend Function

          SHORT       = :reactants
          LONG        = :reactants
          RETURN_TYPE = ReturnTypes::Reactants
          DESCRIPTION = 'Denotes the reactants of a reaction'.freeze
          SIGNATURES  = [].freeze

          def self.short
            SHORT
          end

          def self.long
            LONG
          end

          def self.return_type
            RETURN_TYPE
          end

          def self.description
            DESCRIPTION
          end

          def self.signatures
            SIGNATURES
          end
        end
      end
    end
  end
end
