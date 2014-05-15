# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lti2/version'

Gem::Specification.new do |spec|
  spec.name          = 'lti2'
  spec.version       = LTI2::VERSION
  spec.authors       = ['Nathan Mills']
  spec.email         = ['nathanm@instructure.com']
  spec.summary       = %q{LTI v2p0 ruby implementation}
  spec.homepage      = %q{http://github.com/instructure/lti2}
  spec.license       = 'MIT'

  spec.files         = Dir['{lib}/**/*'] + ['LICENSE.txt', 'README.md', 'Changelog.txt']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'json-ld', '~> 1.1.4'
  spec.add_dependency 'activemodel', '~> 4.1.1'

  spec.add_development_dependency 'rake'
end
