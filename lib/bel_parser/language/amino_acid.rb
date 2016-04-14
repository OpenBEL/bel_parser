module BELParser
  module Language
    # AminoAcid defines a controlled vocabulary of twenty Amino Acids that are
    # encoded by the universal genetic code. It does not contain the additional
    # Amino Acids incorporated into proteins by synthetic means.
    #
    # see https://en.wikipedia.org/wiki/Amino_acid
    module AminoAcid
      Alanine       = [:Alanine, :A, :Ala].freeze
      Arginine      = [:Arginine, :R, :Arg].freeze
      Asparagine    = [:Asparagine, :N, :Asn].freeze
      AsparticAcid  = [:'Aspartic Acid', :D, :Asp].freeze
      Cysteine      = [:Cysteine, :C, :Cys].freeze
      GlutamicAcid  = [:'Glutamic Acid', :E, :Glu].freeze
      Glutamine     = [:Glutamine, :Q, :Gln].freeze
      Glycine       = [:Glycine, :G, :Gly].freeze
      Histidine     = [:Histidine, :H, :His].freeze
      Isoleucine    = [:Isoleucine, :I, :Ile].freeze
      Leucine       = [:Leucine, :L, :Leu].freeze
      Lysine        = [:Lysine, :K, :Lys].freeze
      Methionine    = [:Methionine, :M, :Met].freeze
      Phenylalanine = [:Phenylalanine, :F, :Phe].freeze
      Proline       = [:Proline, :P, :Pro].freeze
      Serine        = [:Serine, :S, :Ser].freeze
      Threonine     = [:Threonine, :T, :Thr].freeze
      Tryptophan    = [:Tryptophan, :W, :Trp].freeze
      Tyrosine      = [:Tyrosine, :Y, :Tyr].freeze
      Valine        = [:Valine, :V, :Val].freeze

      # Determines if +sym+ represents an amino acid code.
      #
      # @param [#to_sym] sym amino acid code
      # @return [Boolean] +true+ if +sym+ amino acid code is included in
      # supported amino acids; +false+ if not supported
      def self.includes?(sym)
        @hash.key?(sym.to_sym)
      end

      # Gets all supported amino acid names.
      def self.names
        @names
      end

      # Gets all supported amino acid codes (i.e. name, 1-Letter, 3-Letter).
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
