class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :cost
      t.text :name
      t.integer :price
      t.integer :image_id
      t.integer :qty
      t.integer :restock_time
      t.text :description

      t.timestamps null: false
    end
  end
end
