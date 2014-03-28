# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'modloc/version'

Gem::Specification.new do |spec|
  spec.name          = "modloc"
  spec.version       = Modloc::VERSION
  spec.authors       = ["Jason Waldrip"]
  spec.email         = ["jason@waldrip.net"]
  spec.summary       = "Find the source location of any module or class"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency "pry", "~> 0.9"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "inch"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "coveralls"
end
