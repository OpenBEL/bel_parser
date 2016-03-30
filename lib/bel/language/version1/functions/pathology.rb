require_relative '../../function'

module BEL
  module Language
    module Version1
      module Functions
        # Pathology
        class Pathology
          include Function

          SHORT       = :path
          LONG        = :pathology
          RETURN_TYPE = :path
          DESCRIPTION = 'Denotes a disease or pathology process'.freeze
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
