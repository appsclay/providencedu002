require 'test_helper'

class PolicySubHedingsControllerTest < ActionController::TestCase
  setup do
    @policy_heding = policy_hedings(:one)
    @policy_sub_heding = policy_sub_hedings(:one)
  end

  test "should get index" do
    get :index, params: { policy_heding_id: @policy_heding }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { policy_heding_id: @policy_heding }
    assert_response :success
  end

  test "should create policy_sub_heding" do
    assert_difference('PolicySubHeding.count') do
      post :create, params: { policy_heding_id: @policy_heding, policy_sub_heding: @policy_sub_heding.attributes }
    end

    assert_redirected_to policy_heding_policy_sub_heding_path(@policy_heding, PolicySubHeding.last)
  end

  test "should show policy_sub_heding" do
    get :show, params: { policy_heding_id: @policy_heding, id: @policy_sub_heding }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { policy_heding_id: @policy_heding, id: @policy_sub_heding }
    assert_response :success
  end

  test "should update policy_sub_heding" do
    put :update, params: { policy_heding_id: @policy_heding, id: @policy_sub_heding, policy_sub_heding: @policy_sub_heding.attributes }
    assert_redirected_to policy_heding_policy_sub_heding_path(@policy_heding, PolicySubHeding.last)
  end

  test "should destroy policy_sub_heding" do
    assert_difference('PolicySubHeding.count', -1) do
      delete :destroy, params: { policy_heding_id: @policy_heding, id: @policy_sub_heding }
    end

    assert_redirected_to policy_heding_policy_sub_hedings_path(@policy_heding)
  end
end
