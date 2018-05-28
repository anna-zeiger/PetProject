class RenameCusineToCuisine < ActiveRecord::Migration[5.2]
  def change
    rename_table :cusines, :cuisines
  end
end