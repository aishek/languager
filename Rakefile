# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "languager"
  gem.homepage = "http://github.com/aishek/languager"
  gem.license = "MIT"
  gem.summary = %Q{Translate string to given language by keyboard layout}
  gem.description = %Q{Translate string to given language by keyboard layout. Useful to auto convert user input from wrong language to target languages in search queries}
  gem.email = "aishek@gmail.com"
  gem.authors = ["Alexandr Borisov"]
  gem.platform    = Gem::Platform::RUBY
  gem.required_ruby_version = '>= 1.9.2'
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "languager #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
