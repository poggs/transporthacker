=begin rdoc

The Tfl::Countdown class handles interaction with the TfL Countdown 'pull' API

=end

require 'csv'

class TransportHacker

  class Tfl

    class Countdown

      def initialize
      end

      def get_predictions_for(stop_id)
        uri = URI('http://countdown.api.tfl.gov.uk/interfaces/ura/instant_V1?stopAlso=true&returnList=StopId,VisitNumber,LineID,LineName,DirectionID,DestinationText,DestinationName,EstimatedTime,VehicleID,TripID,RegistrationNumber,EstimatedTime,ExpireTime&StopID=' + stop_id)
        res = Net::HTTP.get(uri)
        parse_result(res)
      end

      def get_stop_data
        uri = URI('http://countdown.api.tfl.gov.uk/interfaces/ura/instant_V1?stopAlso=true&returnList=StopPointName,StopId,StopCode1,StopCode2,StopPointType,Towards,Bearing,StopPointIndicator,StopPointState,Latitude,Longitude')
        res = Net::HTTP.get(uri)
        parse_result(res)
      end

      private

      def parse_result(res)

        result = []

        res.split("\r\n").each do |r|
          record = JSON.parse(r)
          case record[0]
          when 0
            result << TransportHacker::Tfl::CountdownData::StopArray.new(record)
          when 1
            result << TransportHacker::Tfl::CountdownData::PredictionArray.new(record)
          when 2
            #result << TransportHacker::Tfl::CountdownData::FlexibleMessageArray.new(record)
          when 3
            #result << TransportHacker::Tfl::CountdownData::BaseVersionArray.new(record)
          when 4
            #result << TransportHacker::Tfl::CountdownData::UraVersionArray.new(record)
          else
            puts "Unknown array type #{record[0]}"
          end
        end

        result

      end

    end

  end

end
