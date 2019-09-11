feature 'Add Bookmark' do
  scenario "user adds new bookmark and sees it on page" do
    visit ('/')
    fill_in 'url', with: 'www.cricket.com'
    click_button 'Add Bookmark'
    expect(page).to have_content 'www.cricket.com'
  end
end
