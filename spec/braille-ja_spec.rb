# -*- coding: utf-8 -*-
require 'spec_helper'

describe BrailleJa::Translator do
  it 'translates Japanese string "あいうえお" to Braille' do
    expect(described_class.translate('あいうえお')).to eq '⠁⠃⠉⠋⠊'
  end

  it 'translates Japanese string easily' do
    expect('あいうえお'.to_braille).to eq '⠁⠃⠉⠋⠊'
  end

  it 'never translates Japanese Kanji but leave as is' do
    kanji = '半沢直樹倍返'
    expect(kanji.to_braille).to eq kanji
  end

  it 'translates alphabet or number' do
    expect('abcde'.to_braille).to eq '⠁⠃⠉⠙⠑'
    expect('12345'.to_braille).to eq '⠁⠃⠉⠙⠑'
  end

  it 'translates Yo-on' do
    expect('しゅっしゃ'.to_braille).to eq '⠈⠹⠂⠈⠱'
  end
end

describe BrailleJa::Tokenizer do
  it 'tokenizes japanese by syllable' do
    expect(described_class.tokenize('しゅっしゃ')).to eq %w[しゅ っ しゃ]
  end
end
