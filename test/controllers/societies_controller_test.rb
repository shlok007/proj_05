require 'test_helper'

class SocietiesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get organisations" do
    get :organisations
    assert_response :success
  end
  test "should get contactus" do
    get :contactus
    assert_response :success
  end
end
