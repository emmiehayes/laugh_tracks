RSpec.describe 'a visitor' do
  context "visiting /comedians" do
    it "should see a list of all comedians" do
      comedian_1 = Comedian.create(name: 'Jimmy Fallon', age: 34)
      comedian_2 = Comedian.create(name: 'Judd Apatow', age: 45)

      visit "/comedians"

      expect(page).to have_content("Name: #{comedian_1.name}")
      expect(page).to have_content("Age: #{comedian_1.age}")
      expect(page).to have_content("Name: #{comedian_1.name}")
      expect(page).to have_content("Age: #{comedian_2.age}")
    end

    it "should see a list of all comedian specials" do
      comedian_1 = Comedian.create(name: 'Jimmy Fallon', age: 34)

      special_1 = comedian_1.specials.create(name: 'Special Number One')
      special_2 = comedian_1.specials.create(name: 'Special Number Two')

      visit "/comedians"
      expect(page).to have_content("#{comedian_1.name} Special: #{special_1.name}")
      expect(page).to have_content("#{comedian_1.name} Special: #{special_2.name}")
    end
  end
end
