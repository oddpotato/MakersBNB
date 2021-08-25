class User < ActiveRecord::Base
  has_many :booking # describes user to bookings is a one to many relationship
  has_many :listing # describes user to listings is a one to many relationship
end
