require_relative 'braille-ja/version.rb'
require_relative 'braille-ja/translator.rb'
require_relative 'braille-ja/string-ext.rb'

String.class_eval { include BrailleJa::StringExt }
