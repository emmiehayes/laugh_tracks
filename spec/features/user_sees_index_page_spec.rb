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
  end
end
