describe "User visits comedians page" do
  it "should show an average age for all comedians" do
    comedian_1 = Comedian.create(name: 'Jimmy Fallon', age: 34)
    comedian_2 = Comedian.create(name: 'Judd Apatow', age: 45)

    visit "/comedians"

    expect(page).to have_content(comedian.special)
  end
end
