require_relative '../../function'
require_relative '../return_types/to_location'

module BEL
  module Language
    module Version2
      module Functions
        # ToLocation
        class ToLocation
          extend Function
          include BEL::Language::Version2

          SHORT       = :toLoc
          LONG        = :toLocation
          RETURN_TYPE = ReturnTypes::ToLocation
          DESCRIPTION = 'Denotes the to cellular location of the abundance.'.freeze
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
