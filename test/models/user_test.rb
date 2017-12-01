require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user email validation(right format)" do
    user = User.new({
      email:"dasdf@asdf.com",
      password:"123123",
      password_confirmation:"123123"
      })
    assert user.save, 'validation success'

  end
  test "user email validation(wront format)" do
    user = User.new({
      email:"dasdf",
      password:"123123",
      password_confirmation:"123123"
      })
    refute user.save, 'validation success'
  end

end
