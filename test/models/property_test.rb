require 'test_helper'

class PropertyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #

  test "should not save null property" do
    property = Property.new
    assert_not property.save
  end
end
