require 'yard'

YARD::Rake::YardocTask.new do |t|
  t.files   = ['lib/**/*.rb']
  t.options = [
    '--markup', 'markdown',
    '--files', 'History.md',
    '--title', 'yard-dm'
  ]
end

task :docs => :yard
