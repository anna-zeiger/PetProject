class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|

      t.string :name
      t.integer :rating
      t.boolean :accepts10bis
      t.string :address
      t.integer :maxDeliveryTime

      t.timestamps
    end
  end
end
