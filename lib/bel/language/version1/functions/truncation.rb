require_relative '../../function'
require_relative '../return_types/truncation'

module BEL
  module Language
    module Version1
      module Functions
        # Truncation
        class Truncation
          include BEL::Language::Version1
          extend Function

          SHORT       = :trunc
          LONG        = :truncation
          RETURN_TYPE = ReturnTypes::Truncation
          DESCRIPTION = 'Indicates an abundance of proteins with truncation
  sequence variants'.freeze
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
