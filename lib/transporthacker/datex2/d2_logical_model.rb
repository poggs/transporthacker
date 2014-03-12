require 'transporthacker/datex2/d2_logical_model/exchange'
require 'transporthacker/datex2/d2_logical_model/payload_publication'

class TransportHacker

  class Datex2

    class D2LogicalModel

      attr_accessor :model_base_version, :exchange, :payload_publication

      def initialize(xml=nil)

        if xml
          struct = Hash.from_xml(xml)
          self.model_base_version = struct['d2LogicalModel']['modelBaseVersion']

          if struct['d2LogicalModel'].has_key? 'payloadPublication'
            self.payload_publication = PayloadPublication.new(struct['d2LogicalModel']['payloadPublication'])
          end

          if struct['d2LogicalModel'].has_key? 'exchange'
            self.exchange = Exchange.new(struct['d2LogicalModel']['exchange'])
          end

        end

      end

    end

  end

end
