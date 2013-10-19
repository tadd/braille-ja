require_relative 'braille-ja/version'
require_relative 'braille-ja/translator'
require_relative 'braille-ja/string-ext'

String.class_eval { include BrailleJa::StringExt }
