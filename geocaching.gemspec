# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geocaching/version'

Gem::Specification.new do |spec|
  spec.name          = "geocaching"
  spec.version       = Geocaching::VERSION
  spec.authors       = ["Karsten Silkenbäumer"]
  spec.email         = ["no@spam.com"]
  spec.description   = %q{This gem provides a toolset of functions and methods which aids in doing calculation needed for geocaching.}
  spec.summary       = %q{This gem provides a toolset of functions and methods which aids in doing calculation needed for geocaching.}
  spec.homepage      = "https://github.com/kassi/geocaching"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-test"
  spec.add_development_dependency "terminal-notifier-guard"
  spec.add_development_dependency "test-unit"
  spec.add_development_dependency "rb-fsevent"

  spec.add_dependency "unicode_utils"
end
