class CreateBusStops < ActiveRecord::Migration
  def change
    create_table :bus_stops do |t|
      t.string     :stop_code_lbsl
      t.string     :bus_stop_code
      t.string     :naptan_code
      t.string     :stop_name
      t.integer    :easting
      t.integer    :northing
      t.integer    :heading
      t.string     :stop_area
      t.string     :virtual_bus_stop
      t.timestamps
    end
  end
end
