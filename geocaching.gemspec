# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geocaching/version'

Gem::Specification.new do |gem|
  gem.name          = "geocaching"
  gem.version       = Geocaching::VERSION
  gem.authors       = ["Karsten Silkenbäumer"]
  gem.email         = ["ksi@kluks.de"]
  gem.description   = %q{This gem provides a toolset of functions and methods which aids in doing calculation needed for geocaching.}
  gem.summary       = %q{This gem provides a toolset of functions and methods which aids in doing calculation needed for geocaching.}
  gem.homepage      = "https://github.com/kassi/geocaching"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
