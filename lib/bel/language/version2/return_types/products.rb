require_relative 'any'

module BEL
  module Language
    module Version2
      module ReturnTypes
        # Products return type.
        class Products < Any
          def self.to_sym
            raise_not_implemented(__method__) if self != Products
            :products
          end
        end
      end
    end
  end
end
