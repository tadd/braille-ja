# coding: utf-8
require 'json'

module BrailleJa
  class KanaTranslator
    TABLE = JSON.parse(IO.read(__dir__ + '/table/braille-ja-table-raw.json'))

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
