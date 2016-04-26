require_relative 'function'
require_relative 'specification'
require_relative 'base_specification'

module BELParser
  module Language
    module Version1_0
      # Version1_0 specification defines the BEL 1.0 specification.
      class Specification < BaseSpecification
        BaseSpecification.load_version_path('version1_0')

        def initialize
          @version = '1.0'.freeze
          load_language_constants(Version1_0)
          freeze
        end
      end
    end
  end
end
