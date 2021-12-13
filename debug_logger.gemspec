Gem::Specification.new do |s|
  s.name        = 'debug_logger'
  s.version     = '0.1'
  s.date        = '2020-06-13'
  s.summary     = 'DebugLogger !'
  s.description = 'A simple gem to help debug.'
  s.authors     = ['Antonin Touron']
  s.email       = 'antonintouron@gmail.com'
  s.files       = ['lib/debug_logger.rb', 'lib/debug_logger/debug_logger_utils.rb', 'lib/debug_logger/log.rb']
  s.homepage    = 'https://rubygems.org/gems/debug_logger'
  s.license     = 'MIT'
  s.metadata    = { 'source_code_uri' => 'https://github.com/antonintouron/debug_logger' }
  s.add_development_dependency 'rspec', '~> 3.7'
end
