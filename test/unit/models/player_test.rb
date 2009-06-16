require File.join(File.dirname(__FILE__), '/../../test_helper')

class PlayerTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert Player.create!
  end
  
end