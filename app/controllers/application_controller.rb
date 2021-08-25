require "sinatra"
require "sinatra/activerecord"
require "sinatra/base"
require "sinatra/reloader" if development?
require "sinatra/flash"

class ApplicationController < Sinatra::Base

    configure :development do
      register Sinatra::Reloader
    end
  
    enable :sessions
    register Sinatra::Flash
  
    get '/' do
      'Hello People!'
    end 
  
    run! if app_file == $0
  end

