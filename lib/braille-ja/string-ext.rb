module BrailleJa
  module StringExt
    def kana_to_braille_ja
      KanaTranslator.translate(self)
    end
  end
end
