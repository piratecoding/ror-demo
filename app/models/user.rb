class User < ApplicationRecord	
	has_secure_password
	# Ovo je od gema onog

	ROLE_USER = 0
	ROLE_ADMIN = 1

	validates_presence_of :username, :email
	validates_uniqueness_of :username, :email
	# attr_accessor :password, :password_confirmation
	# Ovo dodaje custom forme koje nisu dio klase

	def admin?
		role == ROLE_ADMIN
	end
end