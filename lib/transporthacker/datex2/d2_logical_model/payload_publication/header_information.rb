class TransportHacker

  class Datex2

    class D2LogicalModel

      class PayloadPublication

        class HeaderInformation

          attr_accessor :area_of_interest, :confidentiality, :information_usage, :information_status

          def initialize(xml=nil)

            return if xml.nil?
            struct = (xml.is_a? String) ? Hash.from_xml(xml) : xml

            if !(struct['headerInformation'].nil?) && (struct['headerInformation'].has_key? 'areaOfInterest')
              self.area_of_interest = struct['headerInformation']['areaOfInterest']
            end

            if !(struct['headerInformation'].nil?) && (struct['headerInformation'].has_key? 'confidentiality')
              self.confidentiality = struct['headerInformation']['confidentiality']
            end

            if !(struct['headerInformation'].nil?) && (struct['headerInformation'].has_key? 'informationUsage')
              self.information_usage = struct['headerInformation']['informationUsage']
            end

            if !(struct['headerInformation'].nil?) && (struct['headerInformation'].has_key? 'informationStatus')
              self.information_status = struct['headerInformation']['informationStatus']
            end

          end

        end

      end

    end

  end

end
