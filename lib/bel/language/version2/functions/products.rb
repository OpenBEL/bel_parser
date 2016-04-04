require_relative '../../function'
require_relative '../return_types/products'

module BEL
  module Language
    module Version2
      module Functions
        # Products
        class Products
          include BEL::Language::Version2
          extend Function

          SHORT       = :products
          LONG        = :products
          RETURN_TYPE = ReturnTypes::Products
          DESCRIPTION = 'Denotes the products of a reaction'.freeze
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
