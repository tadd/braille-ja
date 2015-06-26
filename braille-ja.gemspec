lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'braille-ja/version'

Gem::Specification.new do |spec|
  spec.name          = "braille-ja"
  spec.version       = BrailleJa::VERSION
  spec.authors       = %w[Tadashi Saito]
  spec.email         = %w[tad.a.digger AT gmail.com]
  spec.description   = 'Japanese to Braille traslator'
  spec.summary       = 'Japanese to Braille traslator'
  spec.homepage      = 'http://github.com/tadd/braille-ja'
  spec.license       = 'GPL3'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}, &File.method(:basename))
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  spec.add_dependency "mecab", "0.996"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
