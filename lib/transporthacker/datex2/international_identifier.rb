=begin rdoc

The InternationalIdentifier class 

=end

class TransportHacker

  class Datex2

    class InternationalIdentifier

      attr_accessor :supplier_country, :supplier_national_identifier

      def initialize(xml=nil)

        if xml
          struct = Hash.from_xml(xml)
          struct = struct[struct.keys[0]]
          self.supplier_country = struct['country'] if struct.has_key? 'country'
          self.supplier_national_identifier = struct['nationalIdentifier'] if struct.has_key? 'nationalIdentifier'
        end

      end

    end

  end

end
