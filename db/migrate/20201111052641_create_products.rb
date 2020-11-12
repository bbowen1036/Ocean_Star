class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text :description, null: false
      t.string :name, null: false, unique: true
      t.decimal :price, precision: 5, scale: 2, null: false
      t.integer :category_id, null: false
      
      t.timestamps
    end
    add_index :products, :category_id
  end
end
