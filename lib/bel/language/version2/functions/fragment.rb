require_relative '../../function'
require_relative '../return_types/fragment'

module BEL
  module Language
    module Version2
      module Functions
        # Fragment
        class Fragment
          extend Function
          include BEL::Language::Version2

          SHORT       = :frag
          LONG        = :fragment
          RETURN_TYPE = ReturnTypes::Fragment
          DESCRIPTION = 'Denotes a protein fragment, e.g., a product of
  proteolytic cleavage.'.freeze
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
