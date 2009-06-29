require File.join(File.dirname(__FILE__), '/../../test_helper')

class SwfBlockTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert SwfBlock.create!
  end
  
end