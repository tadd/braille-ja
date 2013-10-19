# coding: utf-8
require 'json'
require 'tataki/base'

module BrailleJa
  class Translator
    TABLE = JSON.parse(IO.read(__dir__ + '/braille-ja-table-raw.json'))

    def initialize(option={})
      @tataki = Tataki::Converter::SkkJisyo.new(%w[M jinmei])
    end

    def translate(source)
      kana = @tataki.to_kana(source)
      Tokenizer.tokenize(kana).map do |c|
        TABLE[c] || c
      end.join
    end

    def self.translate(kana, option={})
      new(option).translate(kana)
    end
  end
end
