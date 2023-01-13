require_relative 'lib/order_by/version'

Gem::Specification.new do |s|
  s.name = 'order_by'
  s.summary = 'Adds order functionality to your ActiveRecord models so that your controllers have shared interface for accepting column/direction params.'
  s.authors = ['Ian Heraty']
  s.version = OrderBy::VERSION
  s.license = 'MIT'
  s.required_ruby_version = ">= 2.6.0"
  s.require_paths = Dir['lib/**/*.rb']

  s.metadata = {
    'source_code_uri' => 'https://github.com/BigGreenCompany/order_by'
  }
end
