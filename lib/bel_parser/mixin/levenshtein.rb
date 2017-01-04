module BELParser
  # Adds a levenshtein implementation based on which ruby engine is used.
  module Levenshtein

    unless self.methods.include?(:distance)

      if RUBY_ENGINE =~ /^jruby/i
        require 'levenshtein'
        define_singleton_method(:distance) do |string1, string2|
          ::Levenshtein.distance(string1, string2)
        end
      else
        require "damerau-levenshtein"
        define_singleton_method(:distance) do |string1, string2|
          ::DamerauLevenshtein.distance(string1, string2)
        end
      end
    end
  end
end
