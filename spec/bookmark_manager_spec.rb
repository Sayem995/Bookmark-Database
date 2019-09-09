require 'bookmark_manager'

describe Bookmark_Manager do
  it "returns a list of bookmarks" do
    expect(subject.return_bookmarks).to eq(["Bookmark 1", "Bookmark 2"])
  end
end
