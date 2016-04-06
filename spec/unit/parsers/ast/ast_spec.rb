require 'bel_parser/parsers/ast/node'

describe BELParser::Parsers::AST do
  context 'when using AST Node specializations' do
    describe 'the BlankLine Node class' do
      subject { BELParser::Parsers::AST::BlankLine }
      it { should_not be_nil }
      it 'is instantiable' do
        expect(subject).to respond_to(:new)
      end
      it 'derives from BELParser::Parsers::AST::Node' do
        expect(subject < BELParser::Parsers::AST::Node).to be(true)
      end
      it 'has a proper ast_type' do
        expect(subject).to respond_to(:ast_type)
        expect(subject.ast_type).to be(:blank_line)
      end
      it 'has semantics' do
        expect(subject).to respond_to(:has_semantics)
        expect(subject.has_semantics).to be(false)
      end
    end
    describe 'the Comment Node class' do
      subject { BELParser::Parsers::AST::Comment }
      it { should_not be_nil }
      it 'is instantiable' do
        expect(subject).to respond_to(:new)
      end
      it 'derives from BELParser::Parsers::AST::Node' do
        expect(subject < BELParser::Parsers::AST::Node).to be(true)
      end
      it 'has a proper ast_type' do
        expect(subject).to respond_to(:ast_type)
        expect(subject.ast_type).to be(:comment)
      end
      it 'has semantics' do
        expect(subject).to respond_to(:has_semantics)
        expect(subject.has_semantics).to be(false)
      end
    end
    describe 'the CommentLine Node class' do
      subject { BELParser::Parsers::AST::CommentLine }
      it { should_not be_nil }
      it 'is instantiable' do
        expect(subject).to respond_to(:new)
      end
      it 'derives from BELParser::Parsers::AST::Node' do
        expect(subject < BELParser::Parsers::AST::Node).to be(true)
      end
      it 'has a proper ast_type' do
        expect(subject).to respond_to(:ast_type)
        expect(subject.ast_type).to be(:comment_line)
      end
      it 'has semantics' do
        expect(subject).to respond_to(:has_semantics)
        expect(subject.has_semantics).to be(false)
      end
    end
    describe 'the AnnotationDefinition Node class' do
      subject { BELParser::Parsers::AST::AnnotationDefinition }
      it { should_not be_nil }
      it 'is instantiable' do
        expect(subject).to respond_to(:new)
      end
      it 'derives from BELParser::Parsers::AST::Node' do
        expect(subject < BELParser::Parsers::AST::Node).to be(true)
      end
      it 'has a proper ast_type' do
        expect(subject).to respond_to(:ast_type)
        expect(subject.ast_type).to be(:annotation_definition)
      end
      it 'has semantics' do
        expect(subject).to respond_to(:has_semantics)
        expect(subject.has_semantics).to be(true)
      end
    end
    describe 'the Function Node class' do
      subject { BELParser::Parsers::AST::Function }
      it { should_not be_nil }
      it 'is instantiable' do
        expect(subject).to respond_to(:new)
      end
      it 'derives from BELParser::Parsers::AST::Node' do
        expect(subject < BELParser::Parsers::AST::Node).to be(true)
      end
      it 'has a proper ast_type' do
        expect(subject).to respond_to(:ast_type)
        expect(subject.ast_type).to be(:function)
      end
      it 'has semantics' do
        expect(subject).to respond_to(:has_semantics)
        expect(subject.has_semantics).to be(true)
      end
    end
    describe 'the NamespaceDefinition Node class' do
      subject { BELParser::Parsers::AST::NamespaceDefinition }
      it { should_not be_nil }
      it 'is instantiable' do
        expect(subject).to respond_to(:new)
      end
      it 'derives from BELParser::Parsers::AST::Node' do
        expect(subject < BELParser::Parsers::AST::Node).to be(true)
      end
      it 'has a proper ast_type' do
        expect(subject).to respond_to(:ast_type)
        expect(subject.ast_type).to be(:namespace_definition)
      end
      it 'has semantics' do
        expect(subject).to respond_to(:has_semantics)
        expect(subject.has_semantics).to be(true)
      end
    end
    describe 'the Identifier Node class' do
      subject { BELParser::Parsers::AST::Identifier }
      it { should_not be_nil }
      it 'is instantiable' do
        expect(subject).to respond_to(:new)
      end
      it 'derives from BELParser::Parsers::AST::Node' do
        expect(subject < BELParser::Parsers::AST::Node).to be(true)
      end
      it 'has a proper ast_type' do
        expect(subject).to respond_to(:ast_type)
        expect(subject.ast_type).to be(:identifier)
      end
      it 'has semantics' do
        expect(subject).to respond_to(:has_semantics)
        expect(subject.has_semantics).to be(false)
      end
    end
    describe 'the List Node class' do
      subject { BELParser::Parsers::AST::List }
      it { should_not be_nil }
      it 'is instantiable' do
        expect(subject).to respond_to(:new)
      end
      it 'derives from BELParser::Parsers::AST::Node' do
        expect(subject < BELParser::Parsers::AST::Node).to be(true)
      end
      it 'has a proper ast_type' do
        expect(subject).to respond_to(:ast_type)
        expect(subject.ast_type).to be(:list)
      end
      it 'has semantics' do
        expect(subject).to respond_to(:has_semantics)
        expect(subject.has_semantics).to be(true)
      end
    end
    describe 'the Parameter Node class' do
      subject { BELParser::Parsers::AST::Parameter }
      it { should_not be_nil }
      it 'is instantiable' do
        expect(subject).to respond_to(:new)
      end
      it 'derives from BELParser::Parsers::AST::Node' do
        expect(subject < BELParser::Parsers::AST::Node).to be(true)
      end
      it 'has a proper ast_type' do
        expect(subject).to respond_to(:ast_type)
        expect(subject.ast_type).to be(:parameter)
      end
      it 'has semantics' do
        expect(subject).to respond_to(:has_semantics)
        expect(subject.has_semantics).to be(true)
      end
    end
    describe 'the Relationship Node class' do
      subject { BELParser::Parsers::AST::Relationship }
      it { should_not be_nil }
      it 'is instantiable' do
        expect(subject).to respond_to(:new)
      end
      it 'derives from BELParser::Parsers::AST::Node' do
        expect(subject < BELParser::Parsers::AST::Node).to be(true)
      end
      it 'has a proper ast_type' do
        expect(subject).to respond_to(:ast_type)
        expect(subject.ast_type).to be(:relationship)
      end
      it 'has semantics' do
        expect(subject).to respond_to(:has_semantics)
        expect(subject.has_semantics).to be(false)
      end
    end
    describe 'the Set Node class' do
      subject { BELParser::Parsers::AST::Set }
      it { should_not be_nil }
      it 'is instantiable' do
        expect(subject).to respond_to(:new)
      end
      it 'derives from BELParser::Parsers::AST::Node' do
        expect(subject < BELParser::Parsers::AST::Node).to be(true)
      end
      it 'has a proper ast_type' do
        expect(subject).to respond_to(:ast_type)
        expect(subject.ast_type).to be(:set)
      end
      it 'has semantics' do
        expect(subject).to respond_to(:has_semantics)
        expect(subject.has_semantics).to be(true)
      end
    end
    describe 'the Statement Node class' do
      subject { BELParser::Parsers::AST::Statement }
      it { should_not be_nil }
      it 'is instantiable' do
        expect(subject).to respond_to(:new)
      end
      it 'derives from BELParser::Parsers::AST::Node' do
        expect(subject < BELParser::Parsers::AST::Node).to be(true)
      end
      it 'has a proper ast_type' do
        expect(subject).to respond_to(:ast_type)
        expect(subject.ast_type).to be(:statement)
      end
      it 'has semantics' do
        expect(subject).to respond_to(:has_semantics)
        expect(subject.has_semantics).to be(true)
      end
    end
    describe 'the NestedStatement Node class' do
      subject { BELParser::Parsers::AST::NestedStatement }
      it { should_not be_nil }
      it 'is instantiable' do
        expect(subject).to respond_to(:new)
      end
      it 'derives from BELParser::Parsers::AST::Node' do
        expect(subject < BELParser::Parsers::AST::Node).to be(true)
      end
      it 'has a proper ast_type' do
        expect(subject).to respond_to(:ast_type)
        expect(subject.ast_type).to be(:nested_statement)
      end
      it 'has semantics' do
        expect(subject).to respond_to(:has_semantics)
        expect(subject.has_semantics).to be(true)
      end
    end
    describe 'the ObservedTerm Node class' do
      subject { BELParser::Parsers::AST::ObservedTerm }
      it { should_not be_nil }
      it 'is instantiable' do
        expect(subject).to respond_to(:new)
      end
      it 'derives from BELParser::Parsers::AST::Node' do
        expect(subject < BELParser::Parsers::AST::Node).to be(true)
      end
      it 'has a proper ast_type' do
        expect(subject).to respond_to(:ast_type)
        expect(subject.ast_type).to be(:observed_term)
      end
      it 'has semantics' do
        expect(subject).to respond_to(:has_semantics)
        expect(subject.has_semantics).to be(true)
      end
    end
    describe 'the SimpleStatement Node class' do
      subject { BELParser::Parsers::AST::SimpleStatement }
      it { should_not be_nil }
      it 'is instantiable' do
        expect(subject).to respond_to(:new)
      end
      it 'derives from BELParser::Parsers::AST::Node' do
        expect(subject < BELParser::Parsers::AST::Node).to be(true)
      end
      it 'has a proper ast_type' do
        expect(subject).to respond_to(:ast_type)
        expect(subject.ast_type).to be(:simple_statement)
      end
      it 'has semantics' do
        expect(subject).to respond_to(:has_semantics)
        expect(subject.has_semantics).to be(true)
      end
    end
    describe 'the String Node class' do
      subject { BELParser::Parsers::AST::String }
      it { should_not be_nil }
      it 'is instantiable' do
        expect(subject).to respond_to(:new)
      end
      it 'derives from BELParser::Parsers::AST::Node' do
        expect(subject < BELParser::Parsers::AST::Node).to be(true)
      end
      it 'has a proper ast_type' do
        expect(subject).to respond_to(:ast_type)
        expect(subject.ast_type).to be(:string)
      end
      it 'has semantics' do
        expect(subject).to respond_to(:has_semantics)
        expect(subject.has_semantics).to be(false)
      end
    end
    describe 'the Term Node class' do
      subject { BELParser::Parsers::AST::Term }
      it { should_not be_nil }
      it 'is instantiable' do
        expect(subject).to respond_to(:new)
      end
      it 'derives from BELParser::Parsers::AST::Node' do
        expect(subject < BELParser::Parsers::AST::Node).to be(true)
      end
      it 'has a proper ast_type' do
        expect(subject).to respond_to(:ast_type)
        expect(subject.ast_type).to be(:term)
      end
      it 'has semantics' do
        expect(subject).to respond_to(:has_semantics)
        expect(subject.has_semantics).to be(true)
      end
    end
    describe 'the Unset Node class' do
      subject { BELParser::Parsers::AST::Unset }
      it { should_not be_nil }
      it 'is instantiable' do
        expect(subject).to respond_to(:new)
      end
      it 'derives from BELParser::Parsers::AST::Node' do
        expect(subject < BELParser::Parsers::AST::Node).to be(true)
      end
      it 'has a proper ast_type' do
        expect(subject).to respond_to(:ast_type)
        expect(subject.ast_type).to be(:unset)
      end
      it 'has semantics' do
        expect(subject).to respond_to(:has_semantics)
        expect(subject.has_semantics).to be(true)
      end
    end
    describe 'the Value Node class' do
      subject { BELParser::Parsers::AST::Value }
      it { should_not be_nil }
      it 'is instantiable' do
        expect(subject).to respond_to(:new)
      end
      it 'derives from BELParser::Parsers::AST::Node' do
        expect(subject < BELParser::Parsers::AST::Node).to be(true)
      end
      it 'has a proper ast_type' do
        expect(subject).to respond_to(:ast_type)
        expect(subject.ast_type).to be(:value)
      end
    end
  end
end
