require 'sinatra'
require 'sinatra/reloader' if development?
class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "Testing infrastructure working!"
    erb(:name_form)
  end

  post '/names' do
    @name_one = params[:name_one]
    @name_two = params[:name_two]
    erb :play_game
  end

  run! if app_file == $0
end
