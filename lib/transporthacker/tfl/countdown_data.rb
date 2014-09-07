class TransportHacker

  class Tfl

    class CountdownData

      class StopArray

        attr_accessor :stop_point_name, :stop_id, :stop_code_1, :stop_code_2, :stop_point_type, :towards, :bearing, :stop_point_indicator, :stop_point_state, :latitude, :longitude

        def initialize(rec)
          counter = 0
          [ :stop_point_name, :stop_id, :stop_code_1, :stop_code_2, :stop_point_type, :towards, :bearing, :stop_point_indicator, :stop_point_state, :latitude, :longitude ].each do |f|
            counter += 1
            self.send(f.to_s + '=', rec[counter])
          end
        end

      end

      class PredictionArray

        attr_accessor :stop_id, :visit_number, :line_id, :line_name, :direction_id, :destination_text, :destination_name, :vehicle_id, :trip_id, :registration_number, :estimated_time, :expire_time

        def initialize(rec)
          counter = 0
          [ :stop_id, :visit_number, :line_id, :line_name, :direction_id, :destination_text, :destination_name, :vehicle_id, :trip_id, :registration_number, :estimated_time, :expire_time ].each do |f|
            counter += 1
            self.send(f.to_s + '=', rec[counter])
          end
        end

      end

      class FlexibleMessageArray

        attr_accessor :stop_id, :message_uuid, :message_type, :message_priority, :message_text, :start_time, :expire_time

      end

      class BaseVersionArray

        attr_accessor :version

      end

      class UraVersionArray

        attr_accessor :version, :timestamp

      end

    end

  end

end
