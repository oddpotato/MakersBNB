require "sinatra"
require "sinatra/activerecord"
require "sinatra/base"
require "sinatra/reloader" if development?
require "sinatra/flash"
require "./lib/listing.rb"

class ApplicationController < Sinatra::Base

    configure :development do
      register Sinatra::Reloader
      set :views, 'app/views'
      set :public_folder, 'public'
    end
  
    enable :sessions
    
    register Sinatra::Flash
  
    get '/' do
      erb :index
    end 

    get '/sessions/new' do
      erb :login
    end

    post '/sessions' do
      user = nil # User.authenticate(email: params[:email], password: params[:password])
      if user
        session[:user_id] = user.id
        redirect('/listings')      
      else
        flash[:notice] = 'Incorrect email or password'
        redirect('/sessions/new')
      end
    end

    get '/listings' do
      @listings = Listing.all
      erb :listings
    end

    get '/listings/new' do
      "this is where new listings will be added"
    end
  
    post "/listings/:id" do
      @listings_id = params[:id]
      @listing = Listing.find_by(id: @listings_id)
      erb :'listings/view'
    end
    

  
    run! if app_file == $0
  end

