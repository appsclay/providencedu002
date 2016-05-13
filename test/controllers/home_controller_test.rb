require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about_us" do
    get :about_us
    assert_response :success
  end

  test "should get contact_us" do
    get :contact_us
    assert_response :success
  end

  test "should get privicy_policy" do
    get :privicy_policy
    assert_response :success
  end

  test "should get t_c" do
    get :t_c
    assert_response :success
  end

  test "should get career" do
    get :career
    assert_response :success
  end

end
