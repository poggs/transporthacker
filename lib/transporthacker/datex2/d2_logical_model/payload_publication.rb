class TransportHacker

  class Datex2

    class D2LogicalModel

      class PayloadPublication

        attr_accessor :publiciation_type, :publication_creator

        def initialize(xml=nil)

          if xml
            struct = Hash.from_xml(xml)
            self.publication_type = struct['type']
            if struct.has_key? 'publicationCreator'
              self.publication_creator = TransportHacker::Datex2::InternationalIdentifier.new(struct['publicationCreator'].to_xml)
            end
          end

        end

      end

    end

  end

end
