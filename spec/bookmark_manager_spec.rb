require 'bookmark_manager'

describe Bookmark_Manager.all do
  it "returns a list of bookmarks" do
    bookmarks = Bookmark_Manager.all
    expect(bookmarks).to include "http://www.makersacademy.com"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://www.google.com"
  end
end
