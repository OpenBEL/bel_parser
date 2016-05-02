module BELParser
  module Script
    module Keyword
      BEL_VERSION_STRING = 'BELVersion'.freeze
      BEL_VERSION_REGEX  = /\A#{BEL_VERSION_STRING}\Z/i

      CITATION       = 'Citation'.freeze
      CITATION_REGEX = /\A#{CITATION}\Z/i

      def is_bel_version?(string)
        string.to_s.strip =~ BEL_VERSION_REGEX
      end

      def is_citation?(string)
        string.to_s.strip =~ CITATION_REGEX
      end
    end
  end
end
