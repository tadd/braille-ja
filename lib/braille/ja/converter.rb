# -*- coding: utf-8 -*-
module Braille
  module Ja
    class Converter
      TABLE = Hash[*%W[
      あ \u2801
      い \u2803
      う \u2809
      え \u280B
      お \u280A
    ]]

      def initialize(option={})
      end

      def convert(source)
        source.each_char.map do |c|
          TABLE[c] || c
        end.join
      end

      def self.convert(kana, option={})
        self.new(option).convert(kana)
      end
    end
  end
end
