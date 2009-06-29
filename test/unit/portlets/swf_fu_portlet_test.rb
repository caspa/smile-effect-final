require File.join(File.dirname(__FILE__), '/../../test_helper')

class SwfFuTest < ActiveSupport::TestCase

  test "Should be able to create new instance of a portlet" do
    assert SwfFuPortlet.create!(:name => "New Portlet")
  end
  
end