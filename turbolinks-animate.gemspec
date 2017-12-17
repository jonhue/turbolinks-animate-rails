lib = File.expand_path '../lib', __FILE__
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'turbolinks-animate/version'

Gem::Specification.new do |gem|
    gem.name = 'turbolinks-animate'
    gem.version = TurbolinksAnimate::VERSION
    gem.authors = ['Jonas Hübotter']
    gem.email = ['jonas.huebotter@gmail.com']

    gem.summary = 'Rich & adaptive animations for apps using Rails w/ Turbolinks™'
    gem.description = 'A dead simple & powerful way of adding rich & adaptive animations to your Rails app which is already using Turbolinks™.'
    gem.homepage = 'https://github.com/jonhue/turbolinks-animate'

    gem.files = `git ls-files`.split("\n")
    gem.require_paths = ['lib']

    gem.add_development_dependency 'bundler', '~> 1.16'
    gem.add_development_dependency 'rake', '~> 10.0'
    gem.add_dependency 'railties', '>= 4.0'
    gem.required_ruby_version = '>= 2.3'
end
