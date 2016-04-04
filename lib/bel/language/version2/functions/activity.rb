require_relative '../../function'
require_relative '../return_types/activity'

module BEL
  module Language
    module Version2
      module Functions
        # Activity
        class Activity
          extend Function
          include BEL::Language::Version2

          SHORT       = :act
          LONG        = :activity
          RETURN_TYPE = ReturnTypes::Activity
          DESCRIPTION = 'Specify events resulting from the molecular activity of
  an abundance. The activity function provides distinct terms that enable
  differentiation of the increase or decrease of the molecular activity of a
  protein from changes in the abundance of the protein.'.freeze
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
