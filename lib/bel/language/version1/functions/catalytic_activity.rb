require_relative '../../function'
require_relative '../return_types/catalytic_activity'

module BEL
  module Language
    module Version1
      module Functions
        # CatalyticActivity
        class CatalyticActivity
          include BEL::Language::Version1
          extend Function

          SHORT       = :cat
          LONG        = :catalyticActivity
          RETURN_TYPE = ReturnTypes::CatalyticActivity
          DESCRIPTION = 'Denotes the frequency or abundance of events where a
  member acts as an enzymatic catalyst of biochecmial reactions'.freeze
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
