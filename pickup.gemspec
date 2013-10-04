require File.dirname(__FILE__) + '/lib/pickup/version'

spec = Gem::Specification.new do |s|

  s.name = 'pickup_line'
  s.author = 'John Crepezzi'
  s.add_development_dependency('rspec')
  s.description = 'Parsing dates out of short form updates'
  s.email = 'john.crepezzi@gmail.com'
  s.files = Dir['lib/**/*.rb']
  s.has_rdoc = true
  s.platform = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.summary = 'Always gets a date'
  s.test_files = Dir.glob('spec/*.rb')
  s.version = Pickup::VERSION

end
