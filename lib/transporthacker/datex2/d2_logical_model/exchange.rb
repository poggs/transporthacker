class TransportHacker

  class Datex2

    class D2LogicalModel

      class Exchange

        attr_accessor :supplier_identification, :publication_creator

        def initialize(xml=nil)

          if xml
            struct = Hash.from_xml(xml)
            identifier = InternationalIdentifier.new(struct.to_xml)
            if struct['hash'].has_key? 'supplierIdentification'
              self.supplier_identification = identifier
            elsif struct['hash'].has_key? 'publicationCreator'
              self.publication_creator = identifier
            end
          end

        end

      end

    end

  end

end
