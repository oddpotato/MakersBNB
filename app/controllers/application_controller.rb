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
      erb :index
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
        redirect('/listings')      
      else
        flash[:notice] = 'Incorrect email or password'
        redirect('/sessions/new')
      end
    end

    post "/book" do
      booking = Booking.create(user_id: params[:user_id], listing_id: params[:listing_id], date_booked: params[:booking_date], confirmed: nil)
      redirect('/requests')
    end

    get "/requests" do
      "this is where you'll be able to see all your requests"
    end
      
    post '/signup' do
    # check email isn't already in DB
    # assuming no...
      user = User.create(name: params[:name], email: params[:email], password_digest: params[:password])
      erb :'listings/index'
    end

    
    run! if app_file == $0
  end

