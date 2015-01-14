class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :url
      t.text :alt
      t.text :title
      t.integer :height
      t.integer :width

      t.timestamps null: false
    end
  end
end
