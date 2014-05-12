=begin rdoc

The Tfl::ReferenceImporter class will import reference data for Transport for London (TfL) services in to the database.

=end

require 'csv'

class TransportHacker

  class Tfl

    class ReferenceImporter

      def initialize
      end

      def import_bus_stops
        CSV.foreach('data/tfl-bus-stops.csv') do |rec|
          process_bus_stop(rec)
        end
      end

      private

      def process_bus_stop(rec)
        data = { stop_code_lbsl: rec[0], bus_stop_code: rec[1], naptan_code: rec[2], stop_name: rec[3], easting: rec[4].to_i, northing: rec[5].to_i, heading: rec[6].to_i, stop_area: rec[7], virtual_bus_stop: rec[8] }
        BusStop.create!(data)
      end

    end

  end

end
