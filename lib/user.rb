class User < ActiveRecord::Base
  has_many :booking
  has_many :listing
end
