require_relative '../../function'
require_relative '../return_types/substitution'

module BEL
  module Language
    module Version1
      module Functions
        # Substitution
        class Substitution
          include BEL::Language::Version1
          extend Function

          SHORT       = :sub
          LONG        = :substitution
          RETURN_TYPE = ReturnTypes::Substitution
          DESCRIPTION = 'Indicates the abundance of proteins with amino acid
  substitution sequence'.freeze
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
