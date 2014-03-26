class TransportHacker

  class Datex2

    class D2LogicalModel

      class PayloadPublication

        attr_accessor :publiciation_type, :publication_creator

        def initialize(xml=nil)

          return if xml.nil?
          struct = (xml.is_a? String) ? Hash.from_xml(xml) : xml

          self.publiciation_type = struct['xsi:type']

          if !(struct['payloadPublication'].nil?) && (struct['payloadPublication'].has_key? 'publicationCreator')
            self.publication_creator = TransportHacker::Datex2::NationalIdentifier.new(struct['payloadPublication'])
          end

        end

      end

    end

  end

end
