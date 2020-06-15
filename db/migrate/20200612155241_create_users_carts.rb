class CreateUsersCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :users_carts do |t|
      t.string :name
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end
