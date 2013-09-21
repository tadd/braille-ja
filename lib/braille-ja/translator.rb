# coding: utf-8
module BrailleJa
  class KanaToBrailleTranslator
    TABLE = Hash[*%W[
      あ \u2801
      い \u2803
      う \u2809
      え \u280B
      お \u280A
    ]]

    def initialize(option={})
    end

    def translate(source)
      source.each_char.map do |c|
        TABLE[c] || c
      end.join
    end

    def self.translate(kana, option={})
      new(option).translate(kana)
    end
  end
end
