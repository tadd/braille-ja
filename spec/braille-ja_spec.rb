# -*- coding: utf-8 -*-
require 'spec_helper'

describe BrailleJa::KanaTranslator do
  it 'translates Japanese string "あいうえお" to Braille' do
    expect(described_class.translate('あいうえお')).to eq '⠁⠃⠉⠋⠊'
  end

  it 'translates Japanese string easily' do
    expect('あいうえお'.kana_to_braille).to eq '⠁⠃⠉⠋⠊'
  end

  it 'never translates Japanese Kanji but leave as is' do
    kanji = '半沢直樹倍返'
    expect(kanji.kana_to_braille).to eq kanji
  end
end
