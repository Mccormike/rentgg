class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :listing_id
      t.integer :renter_id
      t.datetime :pickup
      t.datetime :dropoff
    end
  end
end
