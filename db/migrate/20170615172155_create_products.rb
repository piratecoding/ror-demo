class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      # ovo t.string i t.decimal je od |t|

      t.timestamps
    end
  end
end
