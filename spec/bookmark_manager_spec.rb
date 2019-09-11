require 'bookmark_manager'

describe Bookmark_Manager.all do
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
end

describe "Bookmark_Manager.add" do
  it "adds bookmark to bookmark_manager" do
    bookmarks = Bookmark_Manager.all
    p bookmarks
    Bookmark_Manager.add(url:"www.google.com")
    p bookmarks
    expect(bookmarks).to include "www.google.com"
  end
end
