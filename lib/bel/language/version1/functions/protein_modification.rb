require_relative '../../function'
require_relative '../return_types/protein_modification'

module BEL
  module Language
    module Version1
      module Functions
        # ProteinModification
        class ProteinModification
          include BEL::Language::Version1
          include BEL::Language::Function

          SHORT       = :pmod
          LONG        = :proteinModification
          RETURN_TYPE = ReturnTypes::ProteinModification
          DESCRIPTION = 'Denotes a covalently modified protein abundance'.freeze
          SIGNATURES  = [].freeze

          def short
            SHORT
          end

          def long
            LONG
          end

          def return_type
            RETURN_TYPE
          end

          def description
            DESCRIPTION
          end

          def signatures
            SIGNATURES
          end
        end
      end
    end
  end
end
