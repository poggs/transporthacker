=begin rdoc

The TpegSimplePoint class holds data for a TPEG simple point

=end

class TransportHacker

  class Datex2

    class TpegSimplePoint

      attr_accessor :direction, :location_type, :longitude, :latitude, :point_name, :link_name

      def initialize(xml=nil)

        return if xml.nil?
        struct = (xml.is_a? String) ? Hash.from_xml(xml) : xml

        # self.element_type = struct.keys[0]
        # 
        # struct = struct[struct.keys[0]]
        # self.country = struct['country'] if struct.has_key? 'country'
        # self.national_identifier = struct['nationalIdentifier'] if struct.has_key? 'nationalIdentifier'

      end

    end

  end

end
