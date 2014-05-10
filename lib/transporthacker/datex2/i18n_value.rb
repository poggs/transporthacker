=begin rdoc

The i18nValue class holds a set of strings and languages

=end

class TransportHacker

  class Datex2

    class I18nValue

      attr_accessor :language

      def initialize(xml=nil)

        return if xml.nil?
        struct = (xml.is_a? String) ? Hash.from_xml(xml) : xml

        self.language = {}

        if struct.has_key? 'lang'
          # TODO: Implement multi-language handling
        else
          self.language['en'] = struct['value']
        end

      end

    end

  end

end
