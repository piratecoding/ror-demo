class AddDescriptionColumnToProducts < ActiveRecord::Migration[5.0]
  def change
  	add_column :products, :description, :text
  	# prvi parametar gdje dodajemo, kako se zove i tip varijable
  	# 
  end
end
