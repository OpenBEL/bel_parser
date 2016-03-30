require 'bel/language/version1'

describe BEL::Language::Version1::ReturnTypes do
  RETURN_TYPES = BEL::Language::Version1::ReturnTypes.constants.map do |const|
    BEL::Language::Version1::ReturnTypes.const_get(const)
  end

  RETURN_TYPES.each do |return_type|
    type_name = return_type.name.split('::')[-1]
    describe type_name do
      let(:any_type) do
        BEL::Language::Version1::ReturnTypes::Any
      end

      it 'provides symbol value' do
        expect(return_type).to respond_to(:to_sym)
      end

      it 'provides its subtypes' do
        expect(return_type).to respond_to(:subtype_of?)
      end

      it 'provides all subtypes, transitively' do
        expect(return_type).to respond_to(:transitive_subtypes)
      end

      it 'is a subtype of itself' do
        expect(return_type.subtype_of?(return_type)).to be true
      end

      it 'is a subtype of Any' do
        expect(return_type.subtype_of?(any_type)).to be true
      end

      it 'all subtypes are subtype_of? me' do
        expect(return_type.subtypes).to all(
          satisfy("be subtypes of #{type_name}") do |type|
            type.subtype_of?(return_type)
          end
        )
      end

      context 'when comparing return type Classes' do
        it 'is less than or equal to Any' do
          expect(return_type).to be <= any_type
        end

        it 'Any is greater than or equal to me' do
          expect(any_type).to be >= return_type
        end

        it 'is same class' do
          expect(return_type).to be == return_type
        end
      end
    end
  end
end
