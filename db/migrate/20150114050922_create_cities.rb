class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.text :name
      t.integer :shipping_class_id
      t.integer :country_id

      t.timestamps null: false
    end
  end
end
