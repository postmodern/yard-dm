require 'rubygems'
require 'bundler'

begin
  Bundler.setup(:development, :doc)
rescue Bundler::BundlerError => e
  STDERR.puts e.message
  STDERR.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake'
require 'jeweler'

Jeweler::Tasks.new do |gem|
  gem.name = 'yard-dm'
  gem.license = 'MIT'
  gem.summary = %Q{A YARD plugin for parsing DataMapper model syntax.}
  gem.description = %Q{Once yard-dm is installed, YARD will automatically load the plugin when ever the `yardoc` utility is ran on a project.}
  gem.email = 'postmodern.mod3@gmail.com'
  gem.homepage = 'http://github.com/postmodern/yard-dm'
  gem.authors = ['Postmodern']
  gem.has_rdoc = 'yard'
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs += ['lib', 'spec']
  spec.spec_files = FileList['spec/**/*_spec.rb']
  spec.spec_opts = ['--options', '.specopts']
end

task :test => :spec
task :default => :spec

require 'yard'
YARD::Rake::YardocTask.new
