class AddValidationToNameInCategories < ActiveRecord::Migration[5.0]
  def up
  	change_column :categories, :name, :string, null: false
  end

  def down
  	change_column :categories, :name, :string  	
  end
end
