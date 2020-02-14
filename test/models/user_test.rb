require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'Validates password is 8 chars long' do
    user = users(:one)
    user.password = '123456'
    assert user.valid?
  end  
end
 