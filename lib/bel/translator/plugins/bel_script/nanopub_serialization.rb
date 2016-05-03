require 'bel/quoting'

# Serializing of common {BEL::Nanopub::Nanopub nanopub} components to BEL
# Script syntax.
#
# @abstract
module BEL::Translator::Plugins::BelScript::NanopubSerialization
  include BEL::Quoting

  # Serialize the {BEL::Nanopub::Nanopub nanopub} to a BEL Script string.
  #
  # @param  [BEL::Nanopub::Nanopub] nanopub the nanopub to serialize
  # @return [String]               the BEL Script string
  # @abstract Include and override {#to_bel} to implement serialization
  #           {BEL::Nanopub::Nanopub nanopub} to BEL Script
  def to_bel(nanopub)
  end

  # Return BEL Script syntax that completes the BEL Script document.
  #
  # @abstract
  def epilogue
    raise NotImplementedError.new("#{self.class}#epilogue")
  end

  protected

  def citation_value(nanopub)
    citation = nanopub.citation

    return nil unless citation && citation.valid?

    values = citation.to_a
    values.map! { |v|
      v ||= ""
      if v.respond_to?(:each)
        %Q{"#{v.join('|')}"}
      else
        %Q{"#{v}"}
      end
    }
    values.join(', ')
  end

  def support_value(nanopub)
    support = nanopub.support

    return nil unless support && support.value

    value = support.value
    value.gsub!("\n", "")
    value.gsub!('"', %Q{\\"})
    value
  end

  def annotation_values(nanopub)
    experiment_context = nanopub.experiment_context

    return {} unless experiment_context

    Hash[
      experiment_context.
        sort_by { |obj| obj[:name].to_sym }.
        map { |obj|
          name  = obj[:name].to_sym
          value = obj[:value]

          value_s =
            if value.respond_to? :map
              "{#{value.map { |v| quote(v) }.join(', ')}}"
            else
              quote(value)
            end

          [name, value_s]
        }
    ]
  end
end
