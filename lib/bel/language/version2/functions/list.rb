require_relative '../../function'
require_relative '../return_types/list'

module BEL
  module Language
    module Version2
      module Functions
        # List
        class List
          include BEL::Language::Version2
          extend Function

          SHORT       = :list
          LONG        = :list
          RETURN_TYPE = ReturnTypes::List
          DESCRIPTION = 'Groups a list of terms together'.freeze
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
