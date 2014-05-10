class TransportHacker

  class Datex2

    class D2LogicalModel

      class PayloadPublication

        class PredefinedLocationSet

            class PredefinedLocation

            attr_accessor :location_set_id, :location_set_name, :location_set

            def initialize(xml=nil)

              return if xml.nil?
              struct = (xml.is_a? String) ? Hash.from_xml(xml) : xml

              self.location_set = []

              # if !(struct['predefinedLocationSet'].nil?) && (struct['predefinedLocationSet'].has_key? 'id')
              #   self.location_set_id = struct['predefinedLocationSet']['id']
              # end
              # 
              # if !(struct['predefinedLocationSet'].nil?) && (struct['predefinedLocationSet'].has_key? 'predefinedLocationSetName')
              #   self.location_set_name = struct['predefinedLocationSet']['predefinedLocationSetName']
              # end
              # 
              # if !(struct['predefinedLocationSet'].nil?) && (struct['predefinedLocationSet'].has_key? 'predefinedLocation')
              #   self.location_set << 'foo'
              # end

            end

          end

        end

      end

    end

  end

end
