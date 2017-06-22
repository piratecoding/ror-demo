class AddNullValidationToPriceInProduct < ActiveRecord::Migration[5.0]
  def up
  	change_column :products, :price, :decimal, null: false
  end

  def down
  	change_column :products, :price, :decimal  	
  end
end
