# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rorr/version'

Gem::Specification.new do |spec|
  spec.name          = "rorr"
  spec.version       = Rorr::VERSION
  spec.authors       = ["Leon Ji"]
  spec.email         = ["mgleon08@gmail.com"]

  spec.summary       = %q{The easiest way to evaluate the Ruby or Rails proficiency in a interactive way.}
  spec.description   = %q{This is a test designed to evaluate the Ruby or Rails proficiency and artificial intelligence in a fun, interactive way.}
  spec.homepage      = "https://github.com/mgleon08/rorr"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "colorize"
end
