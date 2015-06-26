# -*- coding: utf-8 -*-
require 'braille-ja'

describe BrailleJa::Translator do
  it 'translates Japanese string "あいうえお" to Braille' do
    expect(described_class.translate('あいうえお')).to eq '⠁⠃⠉⠋⠊'
  end

  it 'translates Japanese string easily' do
    expect('あいうえお'.to_braille).to eq '⠁⠃⠉⠋⠊'
  end

  it 'translates Japanese Kanji string easily' do
    expect('半沢直樹倍返し'.to_braille).to eq 'はんざわなおきばいがえし'.to_braille
    expect('私は海へ行きたい'.to_braille).to eq 'わたしわうみえいきたい'.to_braille
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
