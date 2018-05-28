class AddCusineReferenceToRestaurant < ActiveRecord::Migration[5.2]
  def change
    add_reference :restaurants, :cusine, foreign_key: true
  end
end
