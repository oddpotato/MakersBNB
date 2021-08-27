class BookingController < ApplicationController

  post "/book" do
    user_id = session[:user_id]
    booking = Booking.create(user_id: user_id, listing_id: params[:listing_id], date_booked: params[:booking_date], confirmed: nil)
    redirect('/requests')
  end

  
end
