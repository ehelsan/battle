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
    p "Player One: " + params[:name_one] + " , Player Two: " + params[:name_two] 
  end

  run! if app_file == $0
end