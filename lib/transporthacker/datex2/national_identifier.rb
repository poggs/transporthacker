=begin rdoc

The NationalIdentifier class 

=end

class TransportHacker

  class Datex2

    class NationalIdentifier

      attr_accessor :element_type, :country, :national_identifier

      def initialize(xml=nil)

        return if xml.nil?
        struct = (xml.is_a? String) ? Hash.from_xml(xml) : xml

        self.element_type = struct.keys[0]

        struct = struct[struct.keys[0]]
        self.country = struct['country'] if struct.has_key? 'country'
        self.national_identifier = struct['nationalIdentifier'] if struct.has_key? 'nationalIdentifier'

      end

    end

  end

end
