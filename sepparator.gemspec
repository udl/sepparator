# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "sepparator"
  spec.version       = '0.0.4'
  spec.authors       = ["Andreas Brandl"]
  spec.email         = ["github@andreas-brandl.de"]
  spec.description   = %q{tool for working with CSV files, it supports conversion to Excel files and import to databases.}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/afirel/sepparator"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'simple_xlsx_writer'
  spec.add_dependency 'thor'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
end
