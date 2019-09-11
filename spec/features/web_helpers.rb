require 'pg'

def delete_db_rows
  conn = PG.connect( dbname: 'bookmark_manager_test')
  conn.exec( "TRUNCATE bookmarks")
  p "test database cleared"
end
