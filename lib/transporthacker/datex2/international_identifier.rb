=begin rdoc

The InternationalIdentifier class 

=end

class TransportHacker

  class Datex2

    class InternationalIdentifier

      attr_accessor :element_type, :supplier_country, :supplier_national_identifier

      def initialize(xml=nil)

        puts xml

        if xml
          struct = Hash.from_xml(xml)
          self.element_type = struct.keys[0]
          struct = struct[self.element_type]
          self.supplier_country = struct['country'] if struct.has_key? 'country'
          self.supplier_national_identifier = struct['nationalIdentifier'] if struct.has_key? 'nationalIdentifier'
        end

      end

    end

  end

end
