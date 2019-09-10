feature 'Bookmark manager' do

  scenario 'hello world' do
    visit '/'
    expect(page).to have_content('Bookmarks')
  end

  scenario 'view bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
    expect(page).to have_content("http://www.google.com")
  end

end
