class HomeController < ApplicationController
	def index				
		@welcome_message = 'Welcome to ruby on rails'
		@ror_title = 'Ruby on Rails for beginners 2017'
		@ror_subtitle = 'Web shop demo application'
		@p_count = Product.count
		# definisemo je kao instans varijablu
		# da se prikaze unutar templatea/ da bi bila vidljiva
		# template varijabla se ovo zove
		@broj = 1
	end

	def test
		puts params.inspect		
		# Ovo nesto u konzoli da nam detaljnije ispisuje
	end

	def products	
		@products = Product.all
	end

	def about
		@about_explanation = 'This is demo page'
		@about_message = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
		Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
		Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
		Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
	end
end