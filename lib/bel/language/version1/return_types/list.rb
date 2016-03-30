require_relative 'any'

module BEL
  module Language
    module Version1
      module ReturnTypes
        # List return type.
        class List < Any
          def self.to_sym
            raise_not_implemented(__method__) if self != List
            :list
          end
        end
      end
    end
  end
end
