# -*- coding: utf-8 -*-
require 'spec_helper'

describe BrailleJa::KanaTranslator do
  it 'translates Japanese string "あいうえお" to Braille' do
    expect(described_class.translate('あいうえお')).to eq '⠁⠃⠉⠋⠊'
  end
end
