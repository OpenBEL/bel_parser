require_relative '../../function'
require_relative '../return_types/pathology'

module BEL
  module Language
    module Version1
      module Functions
        # Pathology
        class Pathology
          include BEL::Language::Version1
          extend Function

          SHORT       = :path
          LONG        = :pathology
          RETURN_TYPE = ReturnTypes::Pathology
          DESCRIPTION = 'Denotes a disease or pathology process'.freeze
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
