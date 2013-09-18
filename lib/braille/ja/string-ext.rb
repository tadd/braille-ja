module Braille
  module Ja
    module StringExt
      def to_tenji
        Braille::Ja::Converter.convert(self)
      end
    end
  end
end
