class TransportHacker

  class Datex2

    class D2LogicalModel

      class Exchange

        attr_accessor :supplier_identification, :publication_creator

        def initialize(xml=nil)

          return if xml.nil?
          struct = (xml.is_a? String) ? Hash.from_xml(xml) : xml

          identifier = NationalIdentifier.new(struct)

          if struct.has_key? 'supplierIdentification'
            self.supplier_identification = identifier
          elsif struct.has_key? 'publicationCreator'
            self.publication_creator = identifier
          end

        end

      end

    end

  end

end
