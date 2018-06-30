RSpec 'a visitor'
  context "visiting /comedians" do
    it "should see a list of all comedians" do
      comedian_1 = Comedian.create(name: 'Jimmy Fallon', age: 34)
      comedian_2 = Comedian.create(name: 'Judd Apatow', age: 45)

      visit "/comedians"

      expect(page).to have_content(comedian_1.name)
      expect(page).to have_content(comedian_1.age)
      expect(page).to have_content(comedian_2.name)
      expect(page).to have_content(comedian_2.age)
    end

    it "should see an average age for all comedians" do
      comedian_1 = Comedian.create(name: 'Jimmy Fallon', age: 34)
      comedian_2 = Comedian.create(name: 'Judd Apatow', age: 45)

      visit "/comedians"

      expect(page).to have_content(comedian_1.special)
    end

    it "should show a comedian's special" do
      comedian = Comedian.create(name: 'Jimmy Fallon', age: 34)
      comedian.special.create
      special = comedian.special.create(name:'Fallon special')

      visit "/comedians"

      expect(page).to have_content(comedian.special)
    end
  end
end
