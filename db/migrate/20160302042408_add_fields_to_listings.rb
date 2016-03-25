class AddFieldsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :hourly_rate, :decimal
    add_column :listings, :daily_rate, :decimal
    add_column :listings, :weekly_rate, :decimal
  end
end
