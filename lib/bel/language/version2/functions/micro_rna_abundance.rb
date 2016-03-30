require_relative '../../function'

module BEL
  module Language
    module Version2
      module Functions
        # MicroRNAAbundance
        class MicroRNAAbundance
          include Function

          SHORT       = :m
          LONG        = :microRNAAbundance
          RETURN_TYPE = :m
          DESCRIPTION = 'Denotes the abundance of a processed, functional
  microRNA'.freeze
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
