class ListingController < ApplicationController



    get '/listings' do
        @listings = Listing.all
        @date = Time.now.to_date
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

end
