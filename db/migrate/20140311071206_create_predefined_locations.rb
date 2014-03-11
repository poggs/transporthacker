class CreatePredefinedLocations < ActiveRecord::Migration

  def change
    create_table :predefined_locations do |t|
      t.text       :location_id
      t.text       :location_name
      t.text       :location_type
      t.integer    :from_location
      t.integer    :to_location
      t.timestamps
    end
  end

end
