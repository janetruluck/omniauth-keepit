# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/keepit/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-keepit"
  spec.version       = Omniauth::Keepit::VERSION
  spec.authors       = ["Jason Truluck"]
  spec.email         = ["jason.truluck@gmail.com"]
  spec.summary       = %q{Omniauth strategy for Keepit}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/jasontruluck/omniauth-keepit"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

   spec.add_dependency 'omniauth', '~> 1.0'
   spec.add_dependency 'omniauth-oauth2', '~> 1.1'
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
