require 'require_all'
require 'sinatra/activerecord'
require_all 'lib'

users = [
    
  { name: 'Mendel Durie',
    email: 'mdurie0@drupal.org',
    password_digest: 'dQlRIF'
  },

  { name: 'Almire Brockie',
    email: 'abrockie1@google.com',
    password_digest: 'eNc89tRUyB'
  },

  { name: 'Heinrik Ferguson',
    email: 'hferguson2@slate.com',
    password_digest: '9GwfNyEE'
  },

  { name: 'Doralynn Ballin',
    email: 'dballin3@telegraph.co.uk',
    password_digest: '0sjQhG2DvXgk'
  },

  { name: 'Isac Stanyon',
    email: 'istanyon4@buzzfeed.com',
    password_digest: 'nL3216JPCg'
  },

  { name: 'Deidre Macbane',
    email: 'dmacbane5@nps.gov',
    password_digest: 'VNkfR6i'
  },

  { name: 'Zara Schirak',
    email: 'zschirak6@patch.com',
    password_digest: 'DtUnFuUmTonn'
  },

  { name: 'Tedra Bevan',
    email: 'tbevan7@1688.com',
    password_digest: 'Kn2Tq0EFiF16'
  },

  { name: 'Pierrette Rainy',
    email: 'prainy8@arstechnica.com',
    password_digest: 'hkPbw9oyBwr'
  },

  { name: 'Abby Nowland',
    email: 'anowland9@topsy.com',
    password_digest: 'g3rKXKv'
  }
]

listings = [

  { title: 'Hobbit Hole',
    description: 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.',
    price: 86.57,
    start_date: '2021-9-4',
    end_date: '2021-10-4',
    user_id: 1
  },
  
  { title: 'Bo Burnham\'s Guest House',
    description: "In congue. Etiam justo. Etiam pretium iaculis justo.

    In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.",
    price: 144.57,
    start_date: '2021-3-25',
    end_date: '2021-9-30',
    user_id: 5
  },

  { title: '10 Downing Street',
    description: "Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

    Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.
    
    Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.",
    price: 166.55,
    start_date: '2021-12-01',
    end_date: '2021-12-31',
    user_id: 10
  },

]

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

users.each { |user| User.create(user) }
listings.each { |listing| Listing.create(listing) }
bookings.each { |booking| Booking.create(booking) }