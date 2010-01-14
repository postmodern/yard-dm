require 'spec_helper'
require 'helpers/examples'

require 'yard-dm/property_handler'
require 'yard-dm/legacy/property_handler'

describe "PropertyHandler" do
  include Helpers::Examples

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
