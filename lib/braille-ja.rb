require 'braille/ja/version'
require 'braille/ja/converter'
require 'braille/ja/string-ext'

String.send(:include, Braille::Ja::StringExt)

