require 'sinatra'
require 'sinatra/reloader' if development?
class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:name_form)
  end

  post '/names' do
    session[:name_one] = params[:Name_one]
    session[:name_two] = params[:Name_two]
    redirect('/play')
  end

  get '/play' do
    @name_one = session[:name_one]
    @name_two = session[:name_two]
    erb :play_game
  end

  run! if app_file == $0
end
