class Seller < ApplicationRecord
	has_many :products, dependent: :destroy
	# ovaj dependet destroy je soft delete
	# ide mnozina (products), jer ima vise produkata
	# validates  :name, presence: true
	# validates  :rating, presence: true

	validates_presence_of :name, :rating
	validates  :rating, numericality: true
	#metoda validates
	#prvo ime, drugo vrsta validacije (presence najcesci)
	#presence je railsov validator
	#prvi parametar je uglavnom isti, a drugi se mijenja
end