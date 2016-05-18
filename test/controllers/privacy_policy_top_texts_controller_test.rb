require 'test_helper'

class PrivacyPolicyTopTextsControllerTest < ActionController::TestCase
  setup do
    @privacy_policy_top_text = privacy_policy_top_texts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:privacy_policy_top_texts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create privacy_policy_top_text" do
    assert_difference('PrivacyPolicyTopText.count') do
      post :create, privacy_policy_top_text: { content: @privacy_policy_top_text.content }
    end

    assert_redirected_to privacy_policy_top_text_path(assigns(:privacy_policy_top_text))
  end

  test "should show privacy_policy_top_text" do
    get :show, id: @privacy_policy_top_text
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @privacy_policy_top_text
    assert_response :success
  end

  test "should update privacy_policy_top_text" do
    patch :update, id: @privacy_policy_top_text, privacy_policy_top_text: { content: @privacy_policy_top_text.content }
    assert_redirected_to privacy_policy_top_text_path(assigns(:privacy_policy_top_text))
  end

  test "should destroy privacy_policy_top_text" do
    assert_difference('PrivacyPolicyTopText.count', -1) do
      delete :destroy, id: @privacy_policy_top_text
    end

    assert_redirected_to privacy_policy_top_texts_path
  end
end
