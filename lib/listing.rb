class Listing < ActiveRecord::Base

    has_many :bookings,
    class_name: 'Booking',
    foreign_key: "booking_id"

belongs_to :user,
      class_name: 'User',
      foreign_key: "user_id"
end
