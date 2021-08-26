require 'require_all'
require 'sinatra/activerecord'
require_all 'lib'


bookings = [

    { user_id: 10,
    listing_id: 1,
    date_booked: '2021-12-26',
    confirmed: true,
    },

    { user_id: 2,
    listing_id: 3,
    date_booked: '2021-9-21',
    confirmed: false,
    },

    { user_id: 8,
    listing_id: 2,
    date_booked: '2020-10-11',
    },
    
    { user_id: 6,
    listing_id: 1,
    date_booked: '2021-11-29',
    confirmed: true,
    }
    
]
bookings.each { |booking| Booking.create(booking) }
