# require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = user(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get signup_url
    assert_response :success
  end
end
