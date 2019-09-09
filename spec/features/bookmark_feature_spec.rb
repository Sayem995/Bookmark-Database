feature "Bookmark manager" do
  scenario "hello world" do
    visit ('/')
    expect(page).to have_content('hello world')
  end
end
