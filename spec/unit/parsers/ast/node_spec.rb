require 'bel/parsers/ast/node'

describe BEL::Parsers::AST::Node do
  describe 'the class' do
    subject { BEL::Parsers::AST::Node }
    it { should_not be_nil }
    it 'is instantiable' do
      expect(subject).to respond_to(:new)
    end
    it 'derives from AST::Node' do
      expect(subject.ancestors).to include(AST::Node)
    end
  end

  describe 'instances' do
    let(:cls) { BEL::Parsers::AST::Node }

    it 'have a type' do
      node = cls.new('test_type')
      expect(node).to respond_to(:type)
    end

    it 'have types that are symbols' do
      node = cls.new('test_type')
      expect(node.type).to be_a(Symbol)
    end

    it 'have valid types' do
      node = cls.new('test_type')
      expect(node.type).to be(:test_type)
    end

    it 'have children' do
      node = cls.new('test_type')
      expect(node).to respond_to(:children)
    end

    it 'have children that are arrays' do
      node = cls.new('test_type')
      expect(node.children).to be_a(Array)
    end

    it 'have no children by default' do
      node = cls.new('test_type')
      expect(node.children.size).to eq(0)
      expect(node.children).to eq([])
    end

    it 'cannot have arbitrary properties' do
      node = cls.new('test_type', properties: { foo: 'bar' })
      expect(node).not_to respond_to(:foo)
    end

    it 'can have line_number properties' do
      node = cls.new('test_type', properties: { line_number: 42 })
      expect(node).to respond_to(:line_number)
      expect(node.line_number).to eq(42)
    end

    it 'can have character_range properties' do
      node = cls.new('test_type', properties: { character_range: [0, 10] })
      expect(node).to respond_to(:character_range)
      expect(node.character_range).to eq([0, 10])
    end

    it 'expose access to character_range a' do
      node = cls.new('test_type', properties: { character_range: [0, 10] })
      expect(node).to respond_to(:range_a)
      expect(node.range_a).to eq(0)
    end

    it 'expose access to character_range start' do
      node = cls.new('test_type', properties: { character_range: [0, 10] })
      expect(node).to respond_to(:range_start)
      expect(node.range_start).to eq(0)
    end

    it 'expose access to character_range b' do
      node = cls.new('test_type', properties: { character_range: [0, 10] })
      expect(node).to respond_to(:range_b)
      expect(node.range_b).to eq(10)
    end

    it 'expose access to character_range end' do
      node = cls.new('test_type', properties: { character_range: [0, 10] })
      expect(node).to respond_to(:range_end)
      expect(node.range_end).to eq(10)
    end

    it 'convey completeness' do
      node = cls.new('test_type', properties: { complete: true })
      expect(node).to respond_to(:complete?)
      expect(node.complete?).to eq(true)
      node = cls.new('test_type', properties: { complete: false })
      expect(node).to respond_to(:complete?)
      expect(node.complete?).to eq(false)
    end

    it 'convey incompleteness' do
      node = cls.new('test_type', properties: { complete: true })
      expect(node).to respond_to(:incomplete?)
      expect(node.incomplete?).to eq(false)
      node = cls.new('test_type', properties: { complete: false })
      expect(node).to respond_to(:incomplete?)
      expect(node.incomplete?).to eq(true)
    end
  end
end
