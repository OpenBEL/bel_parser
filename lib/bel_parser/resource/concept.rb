require_relative 'value'

module BELParser
  module Resource
    # Concept
    class Concept
      include Value

      attr_reader :dataset, :uri, :name, :identifier,
                  :title,   :synonyms, :encodings

      def initialize(dataset, uri, pref_label, identifier,
                     title,   alt_labels, types)

        @dataset    = dataset
        @uri        = uri
        @name       = pref_label.to_s
        @identifier = identifier.to_s
        @title      = title.to_s
        @synonyms   = alt_labels.to_s.split('|')
        @encodings  = convert_encoding_types(types.to_s)
      end

      private

      def convert_encoding_types(types)
        types.split('|').map do |type|
          case type
          when /AbundanceConcept$/
            :A
          when /BiologicalProcessConcept$/
            :B
          when /ComplexConcept$/
            :C
          when /GeneConcept$/
            :G
          when /LocationConcept$/
            :L
          when /MicroRNAConcept$/
            :M
          when /MolecularActivityConcept$/
            :T
          when /PathologyConcept$/
            :O
          when /ProteinConcept$/
            :P
          when /ProteinModificationConcept$/
            :E
          when /RNAConcept$/
            :R
          end
        end.compact
      end
    end
  end
end
