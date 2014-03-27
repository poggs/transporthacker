require 'transporthacker/datex2/d2_logical_model/payload_publication/header_information'
require 'transporthacker/datex2/d2_logical_model/payload_publication/predefined_location_set'

class TransportHacker

  class Datex2

    class D2LogicalModel

      class PayloadPublication

        attr_accessor :publiciation_type, :publication_creator, :publication_time, :header_information

        def initialize(xml=nil)

          return if xml.nil?
          struct = (xml.is_a? String) ? Hash.from_xml(xml) : xml

          self.publiciation_type = struct['xsi:type']

          if !(struct['payloadPublication'].nil?) && (struct['payloadPublication'].has_key? 'publicationCreator')
            self.publication_creator = TransportHacker::Datex2::NationalIdentifier.new(struct['payloadPublication'])
          end

          if !(struct['payloadPublication'].nil?) && (struct['payloadPublication'].has_key? 'publicationTime')
            self.publication_time = Time.parse(struct['payloadPublication']['publicationTime'])
          end

          if !(struct['payloadPublication'].nil?) && (struct['payloadPublication'].has_key? 'headerInformation')
            self.header_information = TransportHacker::Datex2::D2LogicalModel::PayloadPublication::HeaderInformation.new(struct['payloadPublication']['publicationTime'])
          end

        end

      end

    end

  end

end
