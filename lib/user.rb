require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_many :booking # describes user to bookings is a one to many relationship
  has_many :listing # describes user to listings is a one to many relationship

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
