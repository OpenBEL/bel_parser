require_relative '../../version1_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version1_0
      module Relationships
        # <%= name %>: <%= description %>
        class <%= name %>
          extend Relationship

          SHORT       = :<%= short %>
          LONG        = :<%= long %>
          DESCRIPTION = '<%= description %>'.freeze

          def self.short
            SHORT
          end

          def self.long
            LONG
          end

          def self.description
            DESCRIPTION
          end
        end
      end
    end
  end
end
