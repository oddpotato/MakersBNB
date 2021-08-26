require 'require_all'
require 'sinatra/activerecord'
require_all 'lib'

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
  
  listings.each { |listing| Listing.create(listing) }

