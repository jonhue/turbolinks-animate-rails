require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

system 'bundle'
system "gem build turbolinks-animate.gemspec"


RSpec::Core::RakeTask.new

task default: :spec
