class HomeController < ApplicationController
	def index				
		@welcome_message = 'Welcome to ruby on rails'
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
end