class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.text :name
      t.integer :shipping_class_id

      t.timestamps null: false
    end
  end
end
