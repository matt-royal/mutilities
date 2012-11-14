# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mutilities/version'

Gem::Specification.new do |gem|
  gem.name          = "mutilities"
  gem.version       = Mutilities::VERSION
  gem.authors       = ["Matt Royal"]
  gem.email         = ["mroyal@gmail.com"]
  gem.description   = %q{A set of small utility classes and core extensions}
  gem.summary       = %q{}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
