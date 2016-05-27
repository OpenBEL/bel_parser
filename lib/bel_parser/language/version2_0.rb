require_relative 'function'
require_relative 'specification'
require_relative 'base_specification'

module BELParser
  module Language
    module Version2_0
      # Version2_0 specification defines the BEL 2.0 specification.
      class Specification < BaseSpecification
        BaseSpecification.load_version_path('version2_0')

        def initialize
          @version = '2.0'.freeze
          @uri     = 'http://www.openbel.org/2.0'
          load_language_constants(Version2_0)
          freeze
        end
      end
    end
  end
end
