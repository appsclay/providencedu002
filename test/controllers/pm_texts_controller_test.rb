require 'test_helper'

class PmTextsControllerTest < ActionController::TestCase
  setup do
    @pm_text = pm_texts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pm_texts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pm_text" do
    assert_difference('PmText.count') do
      post :create, pm_text: { bottom_text: @pm_text.bottom_text }
    end

    assert_redirected_to pm_text_path(assigns(:pm_text))
  end

  test "should show pm_text" do
    get :show, id: @pm_text
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pm_text
    assert_response :success
  end

  test "should update pm_text" do
    patch :update, id: @pm_text, pm_text: { bottom_text: @pm_text.bottom_text }
    assert_redirected_to pm_text_path(assigns(:pm_text))
  end

  test "should destroy pm_text" do
    assert_difference('PmText.count', -1) do
      delete :destroy, id: @pm_text
    end

    assert_redirected_to pm_texts_path
  end
end
