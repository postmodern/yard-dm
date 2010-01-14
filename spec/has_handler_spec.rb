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

  describe "has 0" do
    before(:all) do
      parse_file :has_zero
    end

    it "should define class-methods for the 'has 0' relationships" do
      yard('HasZero.things').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define reader methods for the 'has 0' relationships" do
      yard('HasZero#things').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define writer methods for the 'has 0' relationships" do
      yard('HasZero#things=').should be_instance_of(CodeObjects::MethodObject)
    end
  end

  describe "has 1" do
    before(:all) do
      parse_file :has_one
    end

    it "should define class-methods for the 'has 1' relationships" do
      yard('HasOne.things').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define reader methods for the 'has 1' relationships" do
      yard('HasOne#things').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define writer methods for the 'has 1' relationships" do
      yard('HasOne#things=').should be_instance_of(CodeObjects::MethodObject)
    end
  end

  describe "has 0..n" do
    before(:all) do
      parse_file :has_zero_to_n
    end

    it "should define class-methods for the 'has 0..n' relationships" do
      yard('HasZeroToN.things').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define reader methods for the 'has 0..n' relationships" do
      yard('HasZeroToN#things').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define writer methods for the 'has 0..n' relationships" do
      yard('HasZeroToN#things=').should be_instance_of(CodeObjects::MethodObject)
    end
  end

  describe "has 1..n" do
    before(:all) do
      parse_file :has_one_to_n
    end

    it "should define class-methods for the 'has 1..n' relationships" do
      yard('HasOneToN.things').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define reader methods for the 'has 1..n' relationships" do
      yard('HasOneToN#things').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define writer methods for the 'has 1..n' relationships" do
      yard('HasOneToN#things=').should be_instance_of(CodeObjects::MethodObject)
    end
  end
end
