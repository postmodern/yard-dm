require 'yard'

module Helpers
  module Examples
    EXAMPLES_DIR = File.expand_path(File.join(File.dirname(__FILE__),'examples'))

    def parse_file(file, thisfile = __FILE__)
      YARD::Registry.clear

      path = File.join(Helpers::Examples::EXAMPLES_DIR, "#{file}.rb.txt")
      YARD::Parser::SourceParser.parse(path)
    end

    def yard(name)
      YARD::Registry.at(name)
    end
  end
end
