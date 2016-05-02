module BELParser
  module Script
    module Keyword
      BEL_VERSION_STRING = 'BELVersion'.freeze
      BEL_VERSION_REGEX  = /\A#{BEL_VERSION_STRING}\Z/i

      CITATION       = 'Citation'.freeze
      CITATION_REGEX = /\A#{CITATION}\Z/i

      SUPPORT       = 'Support'.freeze
      SUPPORT_REGEX = /\A#{SUPPORT}\Z/i

      def is_bel_version?(string)
        string =~ BEL_VERSION_REGEX
      end

      def is_citation?(string)
        string =~ CITATION_REGEX
      end

      def is_support?(string)
        string =~ SUPPORT_REGEX
      end
    end
  end
end
