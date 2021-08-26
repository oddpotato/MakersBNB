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
        redirect('/listings')      
      else
        flash[:notice] = 'Incorrect email or password'
        redirect('/sessions/new')
      end
    end

    get '/listings' do
      @listings = Listing.all
      # @available_from = params[:available_from] || "2021-08-26"
      # @available_to = params[:available_to] || "2021-08-27"
      # @date_range = [*@available_from..@available_to]
      # @result = Listing.where(dates_available: @date_range)
      # # @result = Listing.where(:dates_available => @date_range)
      # # p result
      # # @result = Listing.select(:dates_available)
      # # p "hello"
      # p @result
      erb :'listings/index'
    end

    get '/listings/new' do
      erb :'listings/new'
    end

    post '/listings/new' do
  
      Listing.create(
        user_id: session[:user_id], 
        price: params[:list_price], 
        title: params[:list_title], 
        description: params[:list_desc], 
        dates_available: params[:list_date]
      )
      redirect('/listings')
    end
  
    post '/listings/:id' do
      @listings_id = params[:id]
      @listing = Listing.find_by(id: @listings_id)
      erb :'listings/view'
    end
    
    post "/book" do
      user_id = session[:user_id]
      booking = Booking.create(user_id: user_id, listing_id: params[:listing_id], date_booked: params[:booking_date], confirmed: nil)
      redirect('/requests')
    end

    get "/requests" do
      "this is where you'll be able to see all your requests"
    end
      
    post '/signup' do
    # check email isn't already in DB
    @email = params[:email]
      if User.exists?(email: @email)
        flash[:notice1] = 'Email already in use'
        redirect('/')
      else  # assuming no...
        user = User.create(name: params[:name], email: @email, password_digest: params[:password])
        session[:user_id] = user.id
        redirect('/listings')
      end
    end
  
    run! if app_file == $0
  end

