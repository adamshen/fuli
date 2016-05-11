# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fuli/version'

Gem::Specification.new do |spec|
  spec.name          = "fuli"
  spec.version       = Fuli::VERSION
  spec.authors       = ["adamshen"]
  spec.email         = ["adam_ruby@126.com"]

  spec.summary       = %q{fuli}
  spec.description   = %q{just a useless tool, don't care about it.}
  spec.homepage      = "https://github.com/adamshen/fuli"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables = %w[fuli]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "thor", "~> 0.19"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
