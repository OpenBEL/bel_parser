require 'bel_parser/expression/validator'
require 'bel_parser/resources'

# Expression validation spec test. This test ensures syntax and semantic
# results are captured accurately for all supported versions of BEL.
#
# The expression validation test relies on using the default URI resolver
# which accessed the SPARQL endpoint at:
#
#    http://resources.openbel.org/sparql
#
describe BELParser::Expression::Validator, feature: true do

  def validate(version, input)
    BELParser::Expression::Validator.new(
      BELParser::Language.specification(version),
      BELParser::Resources::DEFAULT_NAMESPACES,
      BELParser::Resource.default_uri_reader,
      BELParser::Resource.default_url_reader
    ).each(StringIO.new("#{input}\n")) do |num, line, ast, result|
      return result
    end
  end

  BELParser::Language.specifications.each do |spec|
    context "Syntax validation for BEL, version #{spec.version}" do
      let(:ver) {
        spec.version
      }

      it 'reports syntax errors for an unresolvable namespace' do
        result = validate(ver, 'FOO:BAR')

        expect(result).to respond_to(:valid_syntax?)
        expect(result.valid_syntax?).to be false

        expect(result.syntax_results).to include(
          BELParser::Language::Syntax::UndefinedNamespaceError
        )
      end
      
      it 'reports syntax errors for an unresolvable namespace value' do
        result = validate(ver, 'HGNC:YFG_FTW')

        expect(result).to respond_to(:valid_syntax?)
        expect(result.valid_syntax?).to be true

        expect(result.syntax_results.empty?).to be false
        expect(result.syntax_results).to include(
          BELParser::Language::Syntax::UndefinedNamespaceValueWarning
        )
      end

      it 'successfully validates correct parameter' do
        result = validate(ver, 'HGNC:AKT1')

        expect(result).to respond_to(:valid_syntax?)
        expect(result.valid_syntax?).to be true

        expect(result.syntax_results.empty?).to be true
      end
    end
  end

  context 'BEL, version 1.0' do
    let(:ver) { '1.0' }

    it 'successfully validates abundances' do

    end

    it 'successfully validates activity terms' do
      [
        'act(proteinAbundance(HGNC:VHL))',
        'cat(p(HGNC:AKT1))',
        'chap(p(HGNC:AKT1))',
        'gtp(p(SFAM:"RAS Family"))',
        'kin(p(HGNC:AKT1))',
        'pep(complex(p(HGNC:F3),p(HGNC:F7)))',
        'phos(complex(SCOMP:"PP2A Complex"))',
        'ribo(complex(SCOMP:"PP2A Complex"))',
        'tport(p(MGI:Xpo1))',
        'tscript(p(HGNC:HIF1A))'
      ].each do |activity|
        result = validate(ver, activity)
        expect(result).to respond_to(:valid_syntax?)
        expect(result.valid_syntax?).to be true
        expect(result.valid_semantics?).to be true
      end
    end

    it 'successfully validates protein modifications' do
      [
        'p(HGNC:AKT1,pmod(P,T,308))',
        'p(HGNC:AKT1,pmod(P,S,473))',
        'p(HGNC:HIF1A,pmod(H,P))',
        'p(HGNC:HIF1A,pmod(H))',
      ].each do |pmod|
        result = validate(ver, pmod)
        expect(result).to respond_to(:valid_syntax?)
        expect(result.valid_syntax?).to be true
        expect(result.valid_semantics?).to be true
      end
    end

    it 'catches invalid protein modification' do
      result = validate(ver, 'p(HGNC:AKT1,pmod(Z))')
      expect(result).to respond_to(:valid_syntax?)
      expect(result.valid_syntax?).to be true
      expect(result.valid_semantics?).to be false

      expect(result.semantics_results.empty?).to be false
      expect(result.semantics_results).to include(
        BELParser::Language::Semantics::SemanticsInvalidProteinModificationWarning
      )
    end

    it 'catches invalid amino acid' do
      result = validate(ver, 'p(HGNC:AKT1,pmod(P,Z))')
      expect(result).to respond_to(:valid_syntax?)
      expect(result.valid_syntax?).to be true
      expect(result.valid_semantics?).to be false

      expect(result.semantics_results.empty?).to be false
      expect(result.semantics_results).to include(
        BELParser::Language::Semantics::SemanticsInvalidAminoAcidWarning
      )
    end

    it 'catches invalid sequence position' do
      result = validate(ver, 'p(HGNC:AKT1,pmod(P,Z,"XXX"))')
      expect(result).to respond_to(:valid_syntax?)
      expect(result.valid_syntax?).to be true
      expect(result.valid_semantics?).to be false

      expect(result.semantics_results.empty?).to be false
      expect(result.semantics_results).to include(
        BELParser::Language::Semantics::SemanticsInvalidSequencePositionWarning
      )
    end
  end

  context 'BEL, version 2.0' do
  end
end
