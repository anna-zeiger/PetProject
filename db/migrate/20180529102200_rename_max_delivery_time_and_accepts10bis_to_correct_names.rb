class RenameMaxDeliveryTimeAndAccepts10bisToCorrectNames< ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :maxDeliveryTime, :max_delivery_time
    rename_column :restaurants, :accepts10bis, :accepts_10_bis
  end
end