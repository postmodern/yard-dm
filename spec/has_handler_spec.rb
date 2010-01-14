require 'spec_helper'
require 'helpers/examples'

require 'yard-dm/has_handler'
require 'yard-dm/legacy/has_handler'

describe "HasHandler" do
  include Helpers::Examples

  describe "has n" do
    before(:all) do
      parse_file :has_n
    end

    it "should define class-methods for the 'has n' relationships" do
      yard('HasN.things').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define reader methods for the 'has n' relationships" do
      yard('HasN#things').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define writer methods for the 'has n' relationships" do
      yard('HasN#things=').should be_instance_of(CodeObjects::MethodObject)
    end
  end
end
