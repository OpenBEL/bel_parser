module BELParser
  module Language
    # CovalentProteinModification defines a controlled vocabulary of
    # post-translational protein modifications.
    #
    # see https://en.wikipedia.org/wiki/Post-translational_modification
    module CovalentProteinModification
      Acetylation     = [:Acetylation, :A].freeze
      Farnesylation   = [:Farnesylation, :F].freeze
      Glycosylation   = [:Glycosylation, :G].freeze
      Hydroxylation   = [:Hydroxylation, :H].freeze
      Methylation     = [:Methylation, :M].freeze
      Phosphorylation = [:Phosphorylation, :P].freeze
      Ribosylation    = [:Ribosylation, :R].freeze
      Sumoylation     = [:Sumoylation, :S].freeze
      Ubiquitination  = [:Ubiquitination, :U].freeze

      # Determines if +sym+ represents a covalent protein modification.
      #
      # @param [#to_sym] sym covalent protein modification code
      # @return [Boolean] +true+ if +sym+ code is included in supported
      # covalent protein modifications; +false+ if not supported
      def self.includes?(sym)
        @hash.key?(sym.to_sym)
      end

      # Gets all supported covalent protein modification.
      def self.names
        @names
      end

      # Gets all supported covalent protein modification (i.e. name, 1-Letter).
      def self.values
        @values
      end

      unless defined? @hash
        @hash = {}
        constants.map(&method(:const_get)).each do |values|
          @hash.update(
            Hash[values.map { |v| [v, values.first] }]
          )
        end
        @hash.freeze
      end

      unless defined? @names
        @names = constants.map(&method(:const_get)).map(&:first).sort.freeze
      end

      unless defined? @values
        @values = constants.map(&method(:const_get)).map(&:to_a).flatten.freeze
      end
    end
  end
end
