describe "User visits comedians page" do
  it "should show a comedian's special" do
    comedian = Comedian.create(name: 'Jimmy Fallon', age: 34)
    comedian.special.create
    special = comedian.special.create(name:'Fallon special')

    visit "/comedians"

    expect(page).to have_content(comedian.special)
  end
end
