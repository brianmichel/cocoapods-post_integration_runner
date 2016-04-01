# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pod/version'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-post_integration_runner'
  spec.version       = PostIntegrationRunner::VERSION
  spec.authors       = ['Brian Michel']
  spec.email         = ['brian.michel@gmail.com']
  spec.summary       = 'Used to run code after client project integration has taken place.'
  spec.homepage      = 'https://github.com/brianmichel/cocoapods-post_integration_runner'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
