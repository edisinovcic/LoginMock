class CreateParkingLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :parking_locations, primary_key: :parking_location_id do |t|
      t.string :name, null: false, default: ''
      t.string :description, null: false, default: ''
      t.string :address, null: false, default: ''
      t.string :latitude, null: false, default: ''
      t.string :longitude, null: false, default: ''
      t.timestamps
    end
  end
end
