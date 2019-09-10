require 'sinatra/base'
require './lib/bookmark_manager'

class Bookmark < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks =  Bookmark_Manager.all
    erb :bookmarks
  end

  post '/add' do
    Bookmark_Manager.add(params[:add_bookmark])
    redirect('/bookmarks')
  end
end
