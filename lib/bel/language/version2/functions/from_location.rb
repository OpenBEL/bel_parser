require_relative '../../function'
require_relative '../return_types/from_location'

module BEL
  module Language
    module Version2
      module Functions
        # FromLocation
        class FromLocation
          extend Function
          include BEL::Language::Version2

          SHORT       = :fromLoc
          LONG        = :fromLocation
          RETURN_TYPE = ReturnTypes::FromLocation
          DESCRIPTION = 'Denotes the from cellular location of the abundance.'.freeze
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
