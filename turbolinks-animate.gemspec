# frozen_string_literal: true

require File.expand_path(
  File.join('..', 'lib', 'turbolinks-animate', 'version'),
  __FILE__
)

Gem::Specification.new do |gem|
  gem.name                  = 'turbolinks-animate'
  gem.version               = TurbolinksAnimate::VERSION
  gem.platform              = Gem::Platform::RUBY
  gem.summary               = 'Rich & adaptive animations for apps using '\
                              'Rails w/ Turbolinks™'
  gem.description           = 'A dead simple & powerful way of adding rich & '\
                              'adaptive animations to your Rails app which is '\
                              'already using Turbolinks™.'
  gem.authors               = 'Jonas Hübotter'
  gem.email                 = 'me@jonhue.me'
  gem.homepage              = 'https://github.com/jonhue/'\
                              'turbolinks-animate-rails'
  gem.license               = 'MIT'

  gem.files                 = Dir['README.md', 'LICENSE', 'lib/**/*',
                                  'app/**/*']
  gem.require_paths         = ['lib']

  gem.required_ruby_version = '>= 2.3'

  gem.add_dependency 'mozaic', '~> 2.0'
  gem.add_dependency 'railties', '~> 6.0'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rubocop'
  gem.add_development_dependency 'rubocop-rspec'
end
