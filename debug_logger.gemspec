Gem::Specification.new do |s|
  s.name        = 'debug_logger'
  s.version     = '0.2'
  s.date        = '2021-12-13'
  s.summary     = 'DebugLogger is a simple gem to help debug.'
  s.description = 'This very simple gem was created to simplify your life in creating your log in your programs. It simply allows you to display logs of different colors, whether for a web application like RubyOnRails or for scripts.'
  s.authors     = ['Antonin Touron']
  s.email       = 'antonintouron@gmail.com'
  s.files       = ['lib/debug_logger.rb', 'lib/debug_logger/debug_logger_utils.rb', 'lib/debug_logger/log.rb']
  s.homepage    = 'https://rubygems.org/gems/debug_logger'
  s.license     = 'MIT'
  s.metadata    = { 'source_code_uri' => 'https://github.com/antonintouron/debug_logger' }
  s.add_development_dependency 'rspec', '~> 3.7'
end
