# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dynamodb/local/version'

Gem::Specification.new do |spec|
  spec.name          = "dynamodb-local"
  spec.version       = Dynamodb::Local::VERSION
  spec.authors       = ["Josh Huckabee"]
  spec.email         = ["joshhuckabee@gmail.com"]
  spec.summary       = %q{Wraps installation and usage of the AWS DynamoDB local server tool}
  spec.homepage      = "https://github.com/jhuckabee/dynamodb-local"
  spec.license       = "MIT"
  spec.extensions    = ["Rakefile"]

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

end
