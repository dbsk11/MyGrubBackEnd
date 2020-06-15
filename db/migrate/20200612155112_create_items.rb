class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :category
      t.string :description
      t.integer :restaurant_menu_id

      t.timestamps
    end
  end
end
