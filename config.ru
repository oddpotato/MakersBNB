# require_relative "./app/controllers/"
require_relative './app/controllers/application_controller'
require_relative './app/controllers/user_controller'
require_relative './app/controllers/booking_controller'
require_relative './app/controllers/listing_controller'

# run MakersBNB
# use Rack::MethodOverride
use UserController
use BookingController
use ListingController
run ApplicationController
