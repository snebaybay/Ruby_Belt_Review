require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get registration" do
    get :registration
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

end
