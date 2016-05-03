require_relative 'nanopub_serialization.rb'

# BEL Script nanopub serialization that groups nanopub by citation scoped to
# individual statement groups (i.e. BEL Script's +SET STATEMENT_GROUP+ and
# +UNSET STATEMENT_GROUP+).
#
# @example Citation serialization for a group of nanopub
#   SET STATEMENT_GROUP = 12857727
#   SET Citation = {"PubMed", "Journal...", "12857727", "2003-08-11", "", ""}
#   SET Support = "USF1 and USF2 bound the IGF2R promoter in vitro, ..."
#   SET CellLine = "MCF 10A"
#   SET TextLocation = Abstract
#   complex(p(HGNC:USF1),g(HGNC:IGF2R))
#
#   complex(p(HGNC:USF2),g(HGNC:IGF2R))
#
#   tscript(p(HGNC:USF2)) directlyIncreases r(HGNC:IGF2R)
#
#   tscript(p(HGNC:USF1)) causesNoChange r(HGNC:IGF2R)
#
#   SET Support = "c-Myc was present on the CDK4 promoter to the ..."
#   complex(p(HGNC:MYC),g(HGNC:CDK4))
#   UNSET STATEMENT_GROUP
module BEL::Translator::Plugins::BelScript::BelCitationSerialization
  include BEL::Translator::Plugins::BelScript::NanopubSerialization

  # Serialize the {BEL::Nanopub::Nanopub nanopub} to a BEL Script string.
  #
  # Includes +SET AnnotationName+ and +UNSET AnnotationName+ where needed in
  # order to remove duplicating annotations.
  #
  # @param  [BEL::Nanopub::Nanopub] nanopub the nanopub to serialize
  # @return [String]               the BEL Script string
  def to_bel(nanopub)
    bel = ''

    citation     = citation_value(nanopub)
    summary_text = summary_text_value(nanopub)
    annotations  = annotation_values(nanopub)

    current_annotations            = {}.merge(annotations)
    current_annotations[:Citation] = citation if citation
    current_annotations[:Support]  = summary_text if summary_text

    if !nanopub.citation.id || nanopub.citation.id.empty?
      citation_id = quote('')
    else
      citation_id = quote_if_needed(nanopub.citation.id)
    end

    # Reset cumulative annotations if new citation.
    if cumulative_citation == nil
      bel << %Q{SET STATEMENT_GROUP = #{citation_id}\n}
      cumulative_annotations.clear
    elsif nanopub.citation != cumulative_citation
      bel << %Q{UNSET STATEMENT_GROUP\n}
      bel << "\n\n"
      bel << %Q{SET STATEMENT_GROUP = #{citation_id}\n}
      cumulative_annotations.clear
    end

    # Hang on to the last citation.
    self.cumulative_citation = nanopub.citation

    # UNSET unused annotations from previous nanopub.
    (cumulative_annotations.keys - current_annotations.keys).each do |unset_key|
      bel << "UNSET #{unset_key}\n"
      cumulative_annotations.delete(unset_key)
    end

    # Remove annotation if key/value was SET by a previous nanopub.
    Hash[
      cumulative_annotations.to_a & current_annotations.to_a
    ].each do |same_k, _|
      current_annotations.delete(same_k)
    end

    # Retain the current nanopub's annotation in cumulative set.
    cumulative_annotations.merge!(current_annotations)

    # SET Citation
    citation = current_annotations.delete(:Citation)
    if citation
      bel << "SET Citation = {#{citation}}\n"
    end

    # SET Support
    summary_text = current_annotations.delete(:Support)
    if summary_text
      bel << %Q{SET Support = "#{summary_text}"\n}
    end

    # SET new or modified annotations
    current_annotations.sort.each do |(name, value)|
      bel << "SET #{name} = #{value}\n"
    end

    # Assert BEL statement
    bel << "#{nanopub.bel_statement}\n"

    # Separate nanopub by new line.
    bel << "\n"

    bel
  end

  private

  # The cumulative citation that is active for the current nanopub. This is
  # tracked in order to decide when to begin a new statement group.
  attr_accessor :cumulative_citation

  # Returns the cumulative +Hash+ of annotations. This *state* is used to keep
  # track of the active, scoped annotations as nanopub is serialized.
  def cumulative_annotations
    @cumulative_annotations ||= {}
  end

  # Return BEL Script syntax that should completes the BEL Script document.
  # For Citation serialization we will always end with the unset of a
  # statement group.
  def epilogue
    %Q{UNSET STATEMENT_GROUP\n}
  end
end
