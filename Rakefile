require 'rspec/core/rake_task'
require File.dirname(__FILE__) + '/lib/pickup_line/version'

task :build => :test do
  system "gem build pickup_line.gemspec"
end

task :release => :build do
  # tag and push
  system "git tag v#{PickupLine::VERSION}"
  system "git push origin --tags"
  # push the gem
  system "gem push pickup_line-#{PickupLine::VERSION}.gem"
end

RSpec::Core::RakeTask.new(:test) do |t|
  t.pattern = 'spec/**/*_spec.rb'
  fail_on_error = true # be explicit
end
