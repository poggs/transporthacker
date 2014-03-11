class CreateLocations < ActiveRecord::Migration

  def change
    create_table :locations do |t|
      t.text       :location_type
      t.decimal    :latitude, :precision => 9, :scale => 6
      t.decimal    :longitude, :precision => 9, :scale => 6
      t.hstore     :name
      t.hstore     :ilc
      t.timestamps
    end
  end

end
