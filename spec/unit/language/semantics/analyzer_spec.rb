require 'bel/ast_generator'
require 'bel/ast_filter'
require 'bel/language/version2'
require 'bel/language/semantics/analyzer'

V2 = BEL::Language::Version2::Specification.new

describe BEL::Language::Semantics, '.check_term' do
  subject do
    BEL::Language::Semantics
  end
  let(:terms) do
    line = <<-BEL.gsub(/^ {6}/, '')
      frag(5_20)
      p(HGNC:AKT1)
      p(HGNC:MAPK1, pmod(Ph, Thr, 185), pmod(Ph, Tyr, 187))
    BEL
    io   = StringIO.new(line)
    BEL::ASTFilter
      .new(:term)
      .each(BEL::ASTGenerator.new.each(io))
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
