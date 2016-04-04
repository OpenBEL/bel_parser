require_relative '../../function'
require_relative '../return_types/abundance'

module BEL
  module Language
    module Version1
      module Functions
        # Abundance
        class Abundance
          include BEL::Language::Version1
          extend Function

          SHORT       = :a
          LONG        = :abundance
          RETURN_TYPE = :a
          DESCRIPTION = 'Denotes the abundance of an entity'.freeze
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
