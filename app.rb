require 'sinatra/base'
require './lib/bookmark_manager'

class Bookmark < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    # p ENV 
    @bookmarks =  Bookmark_Manager.all
    erb :bookmarks
  end
end
