class AddLengthToNameInProduct < ActiveRecord::Migration[5.0]
  def up
  	change_column :products, :name, :string, length: 4..20
  end

  def down
  	change_column :products, :name, :string  	
  end
end
