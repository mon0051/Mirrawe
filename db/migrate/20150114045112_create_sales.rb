class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.text :sale_name
      t.integer :sale_percent
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
