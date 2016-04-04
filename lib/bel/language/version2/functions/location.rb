require_relative '../../function'
require_relative '../return_types/location'

module BEL
  module Language
    module Version2
      module Functions
        # Location
        class Location
          extend Function
          include BEL::Language::Version2

          SHORT       = :loc
          LONG        = :location
          RETURN_TYPE = ReturnTypes::Location
          DESCRIPTION = 'Denotes the cellular location of the abundance.'.freeze
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
