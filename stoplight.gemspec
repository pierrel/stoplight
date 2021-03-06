# coding: utf-8

lib = File.expand_path('lib', File.dirname(__FILE__))
$LOAD_PATH.push(lib) unless $LOAD_PATH.include?(lib)

require 'stoplight/version'

Gem::Specification.new do |gem|
  gem.name = 'stoplight'
  gem.version = Stoplight::VERSION
  gem.summary = 'Traffic control for code.'
  gem.description = 'An implementation of the circuit breaker pattern.'
  gem.homepage = 'https://github.com/orgsync/stoplight'
  gem.license = 'MIT'

  {
    'Cameron Desautels' => 'camdez@gmail.com',
    'Taylor Fausak' => 'taylor@fausak.me',
    'Justin Steffy' => 'steffy@orgsync.com'
  }.tap do |hash|
    gem.authors = hash.keys
    gem.email = hash.values
  end

  gem.files = %w(CHANGELOG.md LICENSE.md README.md) +
    Dir.glob(File.join('lib', '**', '*.rb'))
  gem.test_files = Dir.glob(File.join('spec', '**', '*.rb'))

  gem.required_ruby_version = '>= 1.9.3'

  {
    'benchmark-ips' => '2.2',
    'coveralls' => '0.8',
    'fakeredis' => '0.5',
    'guard' => '2.12',
    'guard-rspec' => '4.6',
    'guard-rubocop' => '1.2',
    'hipchat' => '1.5',
    'rake' => '10.4',
    'redis' => '3.2',
    'rspec' => '3.3',
    'rubocop' => '0.32',
    'timecop' => '0.7',
    'yard' => '0.8'
  }.each do |name, version|
    gem.add_development_dependency(name, "~> #{version}")
  end
end
