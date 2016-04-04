require_relative '../../function'
require_relative '../return_types/fusion'

module BEL
  module Language
    module Version1
      module Functions
        # Fusion
        class Fusion
          include BEL::Language::Version1
          extend Function

          SHORT       = :fus
          LONG        = :fusion
          RETURN_TYPE = ReturnTypes::Fusion
          DESCRIPTION = 'Specifies the abundance of a protein translated from
  the fusion of a gene'.freeze
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
