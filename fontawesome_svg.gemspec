# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fontawesome_svg/version'

Gem::Specification.new do |spec|
  spec.name          = "fontawesome_svg"
  spec.version       = FontawesomeSvg::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Jason Pope"]
  spec.email         = ["cowholio4@gmail.com"]
  spec.description   = %q{}
  spec.summary       = %q{}
  spec.homepage      = "http://github.com/cowholio4/fontawesome_svg_ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
