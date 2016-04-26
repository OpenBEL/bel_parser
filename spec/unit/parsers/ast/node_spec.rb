require 'bel_parser/parsers/ast/node'

describe BELParser::Parsers::AST::Node do
  describe 'the class' do
    subject { BELParser::Parsers::AST::Node }
    it { should_not be_nil }
    it 'is instantiable' do
      expect(subject).to respond_to(:new)
    end
    it 'derives from AST::Node' do
      expect(subject < AST::Node).to be(true)
    end
  end

  describe 'instances' do
    let(:cls) { BELParser::Parsers::AST::Node }

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

    it 'can have a child' do
      child = cls.new('child')
      parent = cls.new('parent', [child])
      expect(parent.children.length).to eq(1)
      expect(parent.children[0]).to eq(child)
      expect(parent.first_child).to eq(child)
    end

    it 'can have children' do
      child1 = cls.new('child1')
      child2 = cls.new('child2')
      parent = cls.new('parent', [child1, child2])
      expect(parent.children.length).to eq(2)
      expect(parent.children).to eq([child1, child2])
    end

    it 'cannot have arbitrary properties' do
      node = cls.new('test_type', [], foo: 'bar')
      expect(node).not_to respond_to(:foo)
    end

    it 'can have line_number properties' do
      node = cls.new('test_type', [], line_number: 42)
      expect(node).to respond_to(:line_number)
      expect(node.line_number).to eq(42)
    end

    it 'can have character_range properties' do
      node = cls.new('test_type', [], character_range: [0, 10])
      expect(node).to respond_to(:character_range)
      expect(node.character_range).to eq([0, 10])
    end

    it 'expose access to character_range a' do
      node = cls.new('test_type', [], character_range: [0, 10])
      expect(node).to respond_to(:range_a)
      expect(node.range_a).to eq(0)
    end

    it 'expose access to character_range start' do
      node = cls.new('test_type', [], character_range: [0, 10])
      expect(node).to respond_to(:range_start)
      expect(node.range_start).to eq(0)
    end

    it 'expose access to character_range b' do
      node = cls.new('test_type', [], character_range: [0, 10])
      expect(node).to respond_to(:range_b)
      expect(node.range_b).to eq(10)
    end

    it 'expose access to character_range end' do
      node = cls.new('test_type', [], character_range: [0, 10])
      expect(node).to respond_to(:range_end)
      expect(node.range_end).to eq(10)
    end

    it 'convey completeness' do
      node = cls.new('test_type', [], complete: true)
      expect(node).to respond_to(:complete?)
      expect(node.complete?).to eq(true)
      node = cls.new('test_type', [], complete: false)
      expect(node).to respond_to(:complete?)
      expect(node.complete?).to eq(false)
    end

    it 'convey incompleteness' do
      node = cls.new('test_type', [], complete: true)
      expect(node).to respond_to(:incomplete?)
      expect(node.incomplete?).to eq(false)
      node = cls.new('test_type', [], complete: false)
      expect(node).to respond_to(:incomplete?)
      expect(node.incomplete?).to eq(true)
    end

    describe 'when updated' do
      let(:cls) { BELParser::Parsers::AST::Node }

      context 'without changes' do
        it 'return identical objects' do
          # expectations are for object identity, not equality
          node1 = cls.new(:test_type, [])
          node2 = node1.updated([])
          expect(node1).to be(node2)
          node2 = node1.updated(nil)
          expect(node1).to be(node2)
        end
      end

      context 'with different Classes of type' do
        it 'return unindentical objects' do
          # expectations are for object identity, not equality
          node1 = cls.new('test_type')
          node2 = cls.new(:test_type)
          expect(node1).not_to be(node2)
        end

        it 'return equivalent objects' do
          # expectations are for object equality, not identity
          node1 = cls.new('test_type')
          node2 = cls.new(:test_type)
          expect(node1).to eq(node2)
        end
      end

      context 'with different children' do
        it 'return a different object' do
          # expectations are for object equality, not identity
          node1 = cls.new('test_type', [0])
          node2 = node1.updated([1])
          expect(node1).not_to eq(node2)
          node2 = node1.updated([2])
          expect(node1).not_to eq(node2)
        end
      end

      context 'with more children' do
        it 'return a different object' do
          # expectations are for object equality, not identity
          children = [:Collin, :Tessa]
          node1 = cls.new('test_type', children)
          node2 = node1.updated([:Collin, :Tessa, :Oliver])
          expect(node1).not_to eq(node2)
        end
      end

      context 'with less children' do
        it 'return a different object' do
          # expectations are for object equality, not identity
          children = [:Collin, :Tessa, :Oliver]
          node1 = cls.new('test_type', children)
          # No one liked Oliver anyway...
          children = [:Collin, :Tessa]
          node2 = node1.updated(children)
          expect(node1).not_to eq(node2)
        end
      end
    end
  end
end
