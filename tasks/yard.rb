require 'yard'

YARD::Rake::YardocTask.new do |t|
  t.files   = ['lib/**/*.rb']
  t.options = [
    '--markup', 'markdown',
    '--files', 'History.rdoc',
    '--title', 'yard-dm'
  ]
end

task :docs => :yard
