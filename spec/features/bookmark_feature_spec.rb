feature 'Bookmark manager' do

  scenario 'hello world' do
    visit '/'
    expect(page).to have_content('hello world')
  end

  scenario 'view bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content('Bookmark 1')
    expect(page).to have_content('Bookmark 2')
  end

end
