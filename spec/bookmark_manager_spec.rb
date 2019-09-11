require 'bookmark_manager'

describe Bookmark_Manager do

  it "returns a list of bookmarks" do
    conn = PG.connect( dbname: 'bookmark_manager_test')
    conn.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    conn.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    conn.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")
    bookmarks = Bookmark_Manager.all
    expect(bookmarks).to include "http://www.makersacademy.com"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://www.google.com"
  end
  it "adds bookmark to bookmark_manager" do
    Bookmark_Manager.add(url: "youtube.com")
    bookmarks = Bookmark_Manager.all
    expect(bookmarks).to include "youtube.com"
  end

end
