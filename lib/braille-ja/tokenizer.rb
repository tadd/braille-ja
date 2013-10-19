# coding: utf-8

module BrailleJa
  class Tokenizer
    HIRAGANA_SMALL_LIST = %w[ぁ ぃ ぅ ぇ ぉ ゃ ゅ ょ]
    HIRAGANA_NORMAL_LIST = ('あ'..'ゔ').to_a - HIRAGANA_SMALL_LIST
    HIRAGANA_SMALL = /[#{HIRAGANA_SMALL_LIST.join}]/
    HIRAGANA_NORMAL = /[#{HIRAGANA_NORMAL_LIST.join}]/
    SYLLABLE = /#{HIRAGANA_NORMAL}#{HIRAGANA_SMALL}|./
    
    def initialize(option={})
    end

    def tokenize(source)
      source.scan(SYLLABLE)
    end

    def self.tokenize(kana, option={})
      new(option).tokenize(kana)
    end
  end
end

