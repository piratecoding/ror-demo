class User < ApplicationRecord	
	has_secure_password
	# Ovo je od gema onog

	validates_presence_of :username, :email
	validates_uniqueness_of :username, :email
	# attr_accessor :password, :password_confirmation
	# Ovo dodaje custom forme koje nisu dio klase
end