# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wubit/version'

Gem::Specification.new do |spec|
  spec.name          = "wubit"
  spec.version       = Wubit::VERSION
  spec.authors       = ["Henk Reder" , "John Roth"]
  spec.email         = ["henk@anestuary.com", "john@anestuary.com"]
  spec.summary       = %q{This gem loops through strings and replaces words with dubstep text}
  spec.description   = %q{WUB WUB WUB}
  spec.homepage      = "https://github.com/AnEstuary/wubit"
  spec.license       = "AnEstuary"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
