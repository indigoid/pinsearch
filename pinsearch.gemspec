# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pinsearch/version'

Gem::Specification.new do |spec|
  spec.name          = "pinsearch"
  spec.version       = Pinsearch::VERSION
  spec.authors       = ["John Slee"]
  spec.email         = ["indigoid@gmail.com"]

  spec.summary       = %q{Web interface for searching your own Pinterest account}
  spec.description   = %q{Web interface for searching your own Pinterest account}
  spec.homepage      = "https://github.com/indigoid/pinsearch"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "pinterest-api", "~> 0"
  spec.add_runtime_dependency "sinatra", "~> 1.4"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
