require 'yard'

YARD::Rake::YardocTask.new do |t|
  t.files   = ['lib/**/*.rb']
  t.options = [
    '--files', 'History.rdoc',
    '--title', 'yard-dm'
  ]
end

task :docs => :yard
