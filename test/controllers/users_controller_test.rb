require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get users_login_url
    assert_response :success
  end

  test "should get signin" do
    get users_signin_url
    assert_response :success
  end

  test "should get register" do
    get users_register_url
    assert_response :success
  end

  test "should get signup" do
    get users_signup_url
    assert_response :success
  end

end
