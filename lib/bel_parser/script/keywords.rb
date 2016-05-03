module BELParser
  module Script
    module Keyword
      BEL_VERSION_STRING   = 'BELVersion'.freeze
      BEL_VERSION_REGEX    = /\A#{BEL_VERSION_STRING}\Z/i

      CITATION             = 'Citation'.freeze
      CITATION_REGEX       = /\A#{CITATION}\Z/i

      SUPPORT              = 'Support'.freeze
      SUPPORT_REGEX        = /\A#{SUPPORT}\Z/i

      IMPLICIT_ANNOTATIONS = ['Citation', 'Support', 'STATEMENT_GROUP']

      def is_bel_version?(string)
        string =~ BEL_VERSION_REGEX
      end

      def is_citation?(string)
        string =~ CITATION_REGEX
      end

      def is_support?(string)
        string =~ SUPPORT_REGEX
      end

      def is_implicit_annotation?(string)
        IMPLICIT_ANNOTATIONS.any? { |annotation| string == annotation }
      end
    end
  end
end
