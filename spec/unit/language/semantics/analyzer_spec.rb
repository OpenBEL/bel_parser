require 'bel_parser/ast_generator'
require 'bel_parser/ast_filter'
require 'bel_parser/language/version2_0'
require 'bel_parser/language/semantics/analyzer'

V2 = BELParser::Language::Version2_0::Specification.new

describe BELParser::Language::Semantics, '.check_term' do
  subject do
    BELParser::Language::Semantics
  end
  let(:terms) do
    line = <<-BEL.gsub(/^ {6}/, '')
      frag(5_20)
      p(HGNC:AKT1)
      p(HGNC:MAPK1, pmod(Ph, Thr, 185), pmod(Ph, Tyr, 187))
    BEL
    io   = StringIO.new(line)
    BELParser::ASTFilter
      .new(:term)
      .each(BELParser::ASTGenerator.new.each(io))
      .to_a.map(&:last).map(&:first)
  end

  it 'raises argument error if not supplied an AST::Term' do
    expect do
      subject.check_term("FAIL", V2)
    end.to raise_error(ArgumentError)
    terms.each do |term|
      expect do
        semantics = subject.check_term(term, V2)
        puts "term: #{term}"
        puts semantics.join(", ")
      end.not_to raise_error
    end
  end
end
