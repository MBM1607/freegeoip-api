# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'freegeoip/version'

Gem::Specification.new do |spec|
  spec.name          = 'freegeoip-api'
  spec.version       = Freegeoip::VERSION
  spec.authors       = ['MBM_1607']
  spec.email         = ['muhammadkhan1607@gmail.com']

  spec.summary       = 'Ruby library for interacting with the freegeoip.app API'
  spec.description   = 'This gem will help you access the freegeoip.app API from your ruby code'
  spec.homepage      = 'https://github.com/MBM1607/freegeoip-api'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
    spec.metadata['rubygems_mfa_required'] = 'true'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
          'public gem pushes.'
  end

  spec.required_ruby_version = '>= 2.7.4'
  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = ['freegeoip']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.3.11'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.11'
end
