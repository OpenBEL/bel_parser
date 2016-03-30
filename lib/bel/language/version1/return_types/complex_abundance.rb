require_relative 'abundance'

module BEL
  module Language
    module Version1
      module ReturnTypes
        # Complex abundance return type.
        class ComplexAbundance < Abundance
          def self.to_sym
            raise_not_implemented(__method__) if self != ComplexAbundance
            :complexAbundance
          end
        end
      end
    end
  end
end
