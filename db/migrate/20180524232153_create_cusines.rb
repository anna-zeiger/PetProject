class CreateCusines < ActiveRecord::Migration[5.2]
  def change
    create_table :cusines do |t|
      t.string :name
      t.timestamps
    end
  end
end
