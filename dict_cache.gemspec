# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dict_cache/version'

Gem::Specification.new do |spec|
  spec.name          = "dict_cache"
  spec.version       = DictCache::VERSION
  spec.authors       = ["songjiayang"]
  spec.email         = ["songjiayang1@gmail.com"]

  spec.summary       = %q{Simple dict with daily cache}
  spec.description   = %q{This is a console dict with daily cache}
  spec.homepage      = "https://github.com/songjiayang/dict_cache"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ['dict', 'dict_cache']
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "bing_dictionary", "~> 0.1.0"
end
