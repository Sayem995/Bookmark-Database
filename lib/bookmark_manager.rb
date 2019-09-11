class Bookmark_Manager
  require 'pg'

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      conn = PG.connect(dbname: 'bookmark_manager_test')
    else
      conn = PG.connect(dbname: 'bookmark_manager')
    end

    result = conn.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
    # bookmarks = []
    # bookmarks << "Bookmark 1"
    # bookmarks << "Bookmark 2"
    # bookmarks
  end

  def self.add(url:)
    if ENV['ENVIRONMENT'] == 'test'
      conn = PG.connect( dbname: 'bookmark_manager_test' )
    else
      conn = PG.connect( dbname: 'bookmark_manager' )
    end
    conn.exec("INSERT INTO bookmarks (url) VALUES ('#{url}')")
  end
end
