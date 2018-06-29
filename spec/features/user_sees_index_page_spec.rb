describe "User visits comedians page" do
  it "should show a list of all comedians" do
    comedian_1 = Comedian.create(name: 'Jimmy Fallon', age: 34)
    comedian_2 = Comedian.create(name: 'Judd Apatow', age: 45)

    visit "/comedians"

    expect(page).to have_content(comedian_1.name)
    expect(page).to have_content(comedian_1.age)
    expect(page).to have_content(comedian_2.name)
    expect(page).to have_content(comedian_2.age)
  end
end
