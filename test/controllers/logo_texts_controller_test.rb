require 'test_helper'

class LogoTextsControllerTest < ActionController::TestCase
  setup do
    @logo_text = logo_texts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:logo_texts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create logo_text" do
    assert_difference('LogoText.count') do
      post :create, logo_text: { logo_bottom_text: @logo_text.logo_bottom_text, url: @logo_text.url }
    end

    assert_redirected_to logo_text_path(assigns(:logo_text))
  end

  test "should show logo_text" do
    get :show, id: @logo_text
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @logo_text
    assert_response :success
  end

  test "should update logo_text" do
    patch :update, id: @logo_text, logo_text: { logo_bottom_text: @logo_text.logo_bottom_text, url: @logo_text.url }
    assert_redirected_to logo_text_path(assigns(:logo_text))
  end

  test "should destroy logo_text" do
    assert_difference('LogoText.count', -1) do
      delete :destroy, id: @logo_text
    end

    assert_redirected_to logo_texts_path
  end
end
