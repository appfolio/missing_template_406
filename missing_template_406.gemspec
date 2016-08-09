$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'missing_template_406/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'missing_template_406'
  s.version     = MissingTemplate406::VERSION
  s.authors     = ['Bryce Boe']
  s.email       = ['bbzbryce@gmail.com']
  s.homepage    = 'https://github.com/appfolio/missing_template_406'
  s.summary     = 'Rails 4 plugin that responds with HTTP status 406 on '\
                  'MissingTemplate exceptions.'
  s.description = 'Modifies ActionController::Base such that, in production, '\
                  'ActionView::MissingTemplate exceptions are caught and an '\
                  'HTTP 406-Not Acceptable response is rendered.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile',
                'README.md']
  s.test_files = Dir['test/**/*']

  # Rails 5 should not be supported by this gem.
  s.add_dependency 'rails', '~> 4.0'

  s.add_development_dependency 'mocha', '~> 1.1'
end
