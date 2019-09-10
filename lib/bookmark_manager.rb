class Bookmark_Manager
  require 'pg'
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'hishambokhari')
    end

    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
    # bookmarks = []
    # bookmarks << "Bookmark 1"
    # bookmarks << "Bookmark 2"
    # bookmarks
  end
end
