module BrailleJa
  module StringExt
    def to_braille
      Translator.translate(self)
    end
  end
end
