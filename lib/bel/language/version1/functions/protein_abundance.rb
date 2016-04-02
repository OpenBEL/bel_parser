require_relative '../../function'

module BEL
  module Language
    module Version1
      module Functions
        # ProteinAbundance
        class ProteinAbundance
          include BEL::Language::Function

          SHORT       = :p
          LONG        = :proteinAbundance
          RETURN_TYPE = :p
          DESCRIPTION = 'Denotes the abundance of a protein'.freeze
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

          def inspect
            [short, long].to_s
          end
        end
      end
    end
  end
end
