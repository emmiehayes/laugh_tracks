RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do
    describe '.average_age' do
      it 'returns average age for all comedians' do
        comedian_1 = Comedian.create(name: 'Jimmy Fallon', age: 34)
        comedian_2 = Comedian.create(name: 'Judd Apatow', age: 36)

        expect(Comedian.avg_age).to eq(35)
      end
    end
  end

  describe 'Instance Methods' do
    describe '.special_count' do
      it 'returns number of specials for each comedian' do
        comedian_1 = Comedian.create(name: 'Jimmy Fallon', age: 34)

        special_1 = comedian_1.specials.create(name: 'Special Number One')
        special_2 = comedian_1.specials.create(name: 'Special Number Two')

        expect(comedian_1.special_count).to eq(2)
      end
    end
  end
end
