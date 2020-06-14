class CreateUsersCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :users_carts do |t|
      t.string :name
      t.string :address
      t.string :phoneNumber

      t.timestamps
    end
  end
end
