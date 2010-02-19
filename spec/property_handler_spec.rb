require 'spec_helper'
require 'helpers/examples'

require 'yard-dm/property_handler'
require 'yard-dm/legacy/property_handler'

describe "PropertyHandler" do
  include Helpers::Examples

  describe "valid" do
    before(:all) do
      parse_file :simple_properties
    end

    it "should define class methods for the properties" do
      yard('SimpleProperties.id').should be_instance_of(CodeObjects::MethodObject)
      yard('SimpleProperties.name').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define reader methods for the properties" do
      yard('SimpleProperties#id').should be_instance_of(CodeObjects::MethodObject)
      yard('SimpleProperties#name').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define writer methods for the properties" do
      yard('SimpleProperties#id=').should be_instance_of(CodeObjects::MethodObject)
      yard('SimpleProperties#name=').should be_instance_of(CodeObjects::MethodObject)
    end
  end

  describe "invalid" do
    before(:all) do
      parse_file :invalid_properties
    end

    it "should not define class methods for 'property' variables" do
      yard('InvalidProperties.id').should be_nil
      yard('InvalidProperties.name').should be_nil
    end

    it "should not define reader methods for 'property' variables" do
      yard('InvalidProperties#id').should be_nil
      yard('InvalidProperties#name').should be_nil
    end

    it "should not define writer methods for 'property' variables" do
      yard('InvalidProperties#id=').should be_nil
      yard('InvalidProperties#name=').should be_nil
    end
  end
end
