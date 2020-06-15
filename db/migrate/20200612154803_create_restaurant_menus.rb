class CreateRestaurantMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurant_menus do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :cuisine

      t.timestamps
    end
  end
end
