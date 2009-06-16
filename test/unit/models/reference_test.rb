require File.join(File.dirname(__FILE__), '/../../test_helper')

class ReferenceTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert Reference.create!
  end
  
end