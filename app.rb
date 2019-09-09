require 'sinatra/base'
require './lib/bookmark_manager'

class Bookmark < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    bookmark_manager = Bookmark_Manager.new
    @bookmarks = bookmark_manager.return_bookmarks
    erb :bookmarks
  end
end
