require "sinatra"
require "sinatra/activerecord"
require "sinatra/base"
require "sinatra/reloader" if development?
require "sinatra/flash"
require "./lib/listing.rb"
require "./lib/booking.rb"
require "./lib/user.rb"

class ApplicationController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
    set :views, 'app/views'
    set :public_folder, 'public'
  end

  enable :sessions
  
  register Sinatra::Flash

  get '/' do
    if session[:user_id]
      redirect('/requests')  
    else
      erb :index
    end
  end 

  get '/about' do
    erb :about
  end
  
  get '/sessions/new' do
    erb :login
  end

  post '/sessions' do
    user = User.find_by(email: params[:email])
    if user && user.password_digest == params[:password]
      session[:user_id] = user.id
      redirect('/requests')      
    else
      flash[:notice] = 'Incorrect email or password'
      redirect('/sessions/new')
    end
  end

  get "/requests" do
    @booking = Booking.find_by(user_id: session[:user_id])
    @listing = Listing.find_by(id: @booking.listing_id)

    @listings_posted = Listing.find_by(user_id: session[:user_id])
    @booking_requests = Booking.find_by(listing_id: @listings_posted.id)

    erb :requests
  end
    
  post '/signup' do
    @email = params[:email]
    if User.exists?(email: @email)
      flash[:notice1] = 'Email already in use'
      redirect('/')
    else # assuming no...
      user = User.create(name: params[:name], email: @email, password_digest: params[:password])
      session[:user_id] = user.id
      redirect('/requests')
    end
  end

  run! if app_file == $0
end
