require_relative '../../function'
require_relative '../return_types/variant'

module BEL
  module Language
    module Version2
      module Functions
        # Variant
        class Variant
          extend Function
          include BEL::Language::Version2

          SHORT       = :var
          LONG        = :variant
          RETURN_TYPE = ReturnTypes::Variant
          DESCRIPTION = 'Denotes a sequence variant of the specified
  abundance.'.freeze
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
