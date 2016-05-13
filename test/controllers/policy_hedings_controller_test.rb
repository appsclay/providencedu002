require 'test_helper'

class PolicyHedingsControllerTest < ActionController::TestCase
  setup do
    @policy_heding = policy_hedings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:policy_hedings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create policy_heding" do
    assert_difference('PolicyHeding.count') do
      post :create, policy_heding: { heading: @policy_heding.heading }
    end

    assert_redirected_to policy_heding_path(assigns(:policy_heding))
  end

  test "should show policy_heding" do
    get :show, id: @policy_heding
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @policy_heding
    assert_response :success
  end

  test "should update policy_heding" do
    patch :update, id: @policy_heding, policy_heding: { heading: @policy_heding.heading }
    assert_redirected_to policy_heding_path(assigns(:policy_heding))
  end

  test "should destroy policy_heding" do
    assert_difference('PolicyHeding.count', -1) do
      delete :destroy, id: @policy_heding
    end

    assert_redirected_to policy_hedings_path
  end
end
