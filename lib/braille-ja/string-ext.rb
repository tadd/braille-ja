module BrailleJa
  module StringExt
    def kana_to_braille
      KanaTranslator.translate(self)
    end
  end
end
