require 'sinatra/base'
require 'sinatra/reloader' if development?
class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
end