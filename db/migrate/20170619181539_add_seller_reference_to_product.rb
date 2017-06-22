class AddSellerReferenceToProduct < ActiveRecord::Migration[5.0]
  def change
  	add_reference :products, :seller, foreign_key: true, index: true
  	# seller je jednina, jer se referensira na jednog selera
  	# add_reference, a ne add_collumn
  end
end
