require 'require_all'
require 'sinatra/activerecord'
require_all 'lib'

users = [
  { name: 'S. A. McQuanzie',
    email: 'mcquanzie@example.com',
    password_digest: 'V3ryS3cur3P4ssw0rd'
  },

  { name: 'David',
    email: 'superdave__123@hotmail.com',
    password_digest: 'V3ryS3cur3P4ssw0rd'
  }
]

users.each { |user| User.create(user) }
Listing.create({ title: 'Hobbit Hole', description: 'It\'s very nice here', dates_available: [2021-8-31], user_id: 1 })
Booking.create({ user_id: 2, listing_id: 1, date_booked: 2021-8-31, confirmed: TRUE })
