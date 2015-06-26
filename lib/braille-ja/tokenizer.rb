# coding: utf-8
require 'mecab'

module BrailleJa
  class Tokenizer
    HIRAGANA_SMALL_LIST = %w[ぁ ぃ ぅ ぇ ぉ ゃ ゅ ょ]
    HIRAGANA_NORMAL_LIST = ('あ'..'ゔ').to_a - HIRAGANA_SMALL_LIST
    HIRAGANA_SMALL = /[#{HIRAGANA_SMALL_LIST.join}]/
    HIRAGANA_NORMAL = /[#{HIRAGANA_NORMAL_LIST.join}]/
    SYLLABLE = /#{HIRAGANA_NORMAL}#{HIRAGANA_SMALL}|./
    
    def initialize(option={})
      @mecab = MeCab::Tagger.new
    end

    def tokenize(source)
      kana = to_kana(source)
      kana.scan(SYLLABLE)
    end

    def self.tokenize(kana, option={})
      new(option).tokenize(kana)
    end

    def to_kana(source)
      kana = ''
      each_node(source) do |node|
        yomi = get_yomi(node) || node.surface
        yomi.force_encoding('utf-8')
        kana += to_katakana(yomi)
      end
      kana
    end

    def each_node(source)
      node = @mecab.parseToNode(source)
      while node
	yield node
        node = node.next
      end
    end

    def to_katakana(source)
      source.tr('ァ-ン', 'ぁ-ん')
    end

    def get_yomi(node)
      yomi = node.feature.split(',').last
      yomi == '*' ? nil : yomi
    end
  end
end

