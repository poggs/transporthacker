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
        uri = URI('http://countdown.api.tfl.gov.uk/interfaces/ura/instant_V1?stopAlso=true&returnList=StopPointName,StopId,StopCode1,StopCode2,StopPointState,StopPointIndicator,Towards,Bearing,Latitude,Longitude,VisitNumber,TripID,VehicleID,RegistrationNumber,LineID,LineName,DirectionID,DestinationText,DestinationName,EstimatedTime,MessageUUID,MessageText,MessageType,MessagePriority,StartTime,ExpireTime,BaseVersion&StopID=' + stop_id)
        res = Net::HTTP.get(uri)
        parse_result(res)
      end

      private

      def parse_result(res)

        res.split("\r\n").each do |r|
          parsed_result = JSON.parse(r)
        end

      end

    end

  end

end
