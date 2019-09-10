class Bookmark_Manager
  require 'pg'
  def self.all

    connection = PG.connect(dbname: 'bookmarks')
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
    # bookmarks = []
    # bookmarks << "Bookmark 1"
    # bookmarks << "Bookmark 2"
    # bookmarks
  end
end
