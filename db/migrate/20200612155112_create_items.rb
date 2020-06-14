class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :price
      t.string :cateogry
      t.string :description
      t.integer :restaurant_menu_id

      t.timestamps
    end
  end
end
