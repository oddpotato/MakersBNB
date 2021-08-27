require './lib/listing.rb'

class ListingController < ApplicationController

  def filter_listings(start_date = @start_date, end_date = @end_date)
    @list_of_filtered_listings = []
    @listings.each do |listing|
      if (listing.start_date > start_date) || (listing.end_date < end_date)
        filter_listings.append(listing)
      end
    end
  end

get '/listings' do
    @listings = Listing.all
    @date = Time.now.to_date
    erb :'listings/index'
  end

  post '/listings/filtered' do
    @listings = Listing.all
    @date = Time.now.to_date
    @start_date = params[:start_date]
    @end_date = params[:end_date] 
    @filter_listings
    @list_of_filter_listings
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
      start_date: params[:list_from],
      end_date: params[:list_to]
    )
    redirect('/listings')
  end

  post '/listings/:id' do
    @listings_id = params[:id]
    @listing = Listing.find_by(id: @listings_id)
    erb :'listings/view'
  end
end
