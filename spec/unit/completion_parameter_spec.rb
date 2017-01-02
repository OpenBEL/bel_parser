require_relative 'spec_helper'
require 'bel'
require 'bel_parser/language'
require 'bel_parser/completion'

describe BELParser::Completion::ParameterCompleter do
  let(:completer) {
    spec   = BELParser::Language.specification('2.0')
    search = BEL::Resource::Search.plugins[:sqlite].create_search(
      :database_file => '/home/tony/projects/openbel/openbel-api/data/rdf_resources.db'
    )
    repo = BEL::RdfRepository.plugins[:memory].create_repository
    # entrez gene
    repo << RDF::Statement(
      RDF::URI.new('http://www.openbel.org/bel/namespace/entrez-gene'),
      RDF::RDFV.type,
      RDF::URI.new('http://www.openbel.org/vocabulary/NamespaceConceptScheme')
    )
    repo << RDF::Statement(
      RDF::URI.new('http://www.openbel.org/bel/namespace/entrez-gene'),
      RDF::URI.new('http://www.openbel.org/vocabulary/prefix'),
      'eg'
    )
    # hgnc
    repo << RDF::Statement(
      RDF::URI.new('http://www.openbel.org/bel/namespace/hgnc-human-genes'),
      RDF::RDFV.type,
      RDF::URI.new('http://www.openbel.org/vocabulary/NamespaceConceptScheme')
    )
    repo << RDF::Statement(
      RDF::URI.new('http://www.openbel.org/bel/namespace/hgnc-human-genes'),
      RDF::URI.new('http://www.openbel.org/vocabulary/prefix'),
      'hgnc'
    )
    # mgi
    repo << RDF::Statement(
      RDF::URI.new('http://www.openbel.org/bel/namespace/mgi-mouse-genes'),
      RDF::RDFV.type,
      RDF::URI.new('http://www.openbel.org/vocabulary/NamespaceConceptScheme')
    )
    repo << RDF::Statement(
      RDF::URI.new('http://www.openbel.org/bel/namespace/mgi-mouse-genes'),
      RDF::URI.new('http://www.openbel.org/vocabulary/prefix'),
      'mgi'
    )
    # rgd
    repo << RDF::Statement(
      RDF::URI.new('http://www.openbel.org/bel/namespace/rgd-rat-genes'),
      RDF::RDFV.type,
      RDF::URI.new('http://www.openbel.org/vocabulary/NamespaceConceptScheme')
    )
    repo << RDF::Statement(
      RDF::URI.new('http://www.openbel.org/bel/namespace/rgd-rat-genes'),
      RDF::URI.new('http://www.openbel.org/vocabulary/prefix'),
      'rgd'
    )

    namespaces = BEL::Resource::Namespaces.new(repo)
    BELParser::Completion::ParameterCompleter.new(spec, search, namespaces)
  }

  it 'completes to Array<String>, size: 2' do
    expect(completer.complete('AKT', 3)).to all(be_a(Array))
    expect(completer.complete('AKT', 3)).to all(have_attributes(size: 2))
  end

  it 'completes the namespace prefix and value' do
    match = completer.complete('AKT1S1', 6).find { |(_, value)| value == 'AKT1S1' }
    expect(match).to match(['HGNC', 'AKT1S1'])
  end

  it 'namespace value matches are sorted by increasing levenshtein distance' do
    expect(completer.complete('AKT1', 4)).to start_with(
      ['HGNC', 'AKT1'],
      ['MGI',  'Akt1'],
      ['RGD',  'Akt1']
    )
  end
end
