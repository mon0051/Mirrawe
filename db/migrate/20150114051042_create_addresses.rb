class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :street_no
      t.text :street_name
      t.integer :city_id

      t.timestamps null: false
    end
  end
end
