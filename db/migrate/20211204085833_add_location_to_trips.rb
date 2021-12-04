class AddLocationToTrips < ActiveRecord::Migration[6.1]
  def change
    add_column :trips, :location, :string
  end
end
