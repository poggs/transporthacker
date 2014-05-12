require 'transporthacker/datex2/d2_logical_model/payload_publication/predefined_location_set/predefined_location'

class TransportHacker

  class Datex2

    class D2LogicalModel

      class PayloadPublication

        class PredefinedLocationSet

          attr_accessor :location_set_id, :location_set_name, :location_set

          def initialize(xml=nil)

            return if xml.nil?
            struct = (xml.is_a? String) ? Hash.from_xml(xml) : xml

            self.location_set = []

            if !(struct['predefinedLocationSet'].nil?) && (struct['predefinedLocationSet'].has_key? 'id')
              self.location_set_id = struct['predefinedLocationSet']['id']
            end

            if !(struct['predefinedLocationSet'].nil?) && (struct['predefinedLocationSet'].has_key? 'predefinedLocationSetName')
              self.location_set_name = TransportHacker::Datex2::I18nValue.new(struct['predefinedLocationSet']['predefinedLocationSetName'])
            end

            if !(struct['predefinedLocationSet'].nil?) && (struct['predefinedLocationSet'].has_key? 'predefinedLocation')

              if struct['predefinedLocationSet']['predefinedLocation'].class != Array
                struct['predefinedLocationSet']['predefinedLocation'] = [ struct['predefinedLocationSet']['predefinedLocation'] ]
              end

              struct['predefinedLocationSet']['predefinedLocation'].each do |predefined_location|
                self.location_set << TransportHacker::Datex2::D2LogicalModel::PayloadPublication::PredefinedLocationSet::PredefinedLocation.new(predefined_location)
              end
            end

          end

        end

      end

    end

  end

end
