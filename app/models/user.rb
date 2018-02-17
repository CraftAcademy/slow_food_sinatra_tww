class User < ActiveRecord::Base
  has_secure_password

  validates_presence_of :name, :password_digest, presence: true
  # Remember to create a migration!
end
