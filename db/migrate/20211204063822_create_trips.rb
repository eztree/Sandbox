class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :name
      t.date :start
      t.date :end
      t.integer :no_of_people

      t.timestamps
    end
  end
end
