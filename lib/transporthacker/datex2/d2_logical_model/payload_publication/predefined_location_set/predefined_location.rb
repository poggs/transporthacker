class TransportHacker

  class Datex2

    class D2LogicalModel

      class PayloadPublication

        class PredefinedLocationSet

          class PredefinedLocation

            attr_accessor :location_id, :location_name

            def initialize(xml=nil)

              return if xml.nil?
              struct = (xml.is_a? String) ? Hash.from_xml(xml) : xml

              if !(struct['predefinedLocation'].nil?) && (struct['predefinedLocation'].has_key? 'id')
                self.location_id = struct['predefinedLocation']['id']
              end

              if !(struct['predefinedLocation'].nil?) && (struct['predefinedLocation'].has_key? 'predefinedLocationName')
                self.location_name = TransportHacker::Datex2::I18nValue.new(struct['predefinedLocation']['predefinedLocationName'])
              end

            end

          end

        end

      end

    end

  end

end
