class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :title
      t.text :subtitle
      t.integer :image_id
      t.text :content

      t.timestamps null: false
    end
  end
end
