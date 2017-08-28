class User < ApplicationRecord
	has_secure_password
	validates :email, :presence => true,
	:uniqueness => true
	has_many :photos
	has_many :friends
	has_many :bulletins
	has_many :comments
	has_one :profile
end
