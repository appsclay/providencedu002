require 'test_helper'

class PmLogosControllerTest < ActionController::TestCase
  setup do
    @pm_logo = pm_logos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pm_logos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pm_logo" do
    assert_difference('PmLogo.count') do
      post :create, pm_logo: { logo: @pm_logo.logo, position: @pm_logo.position }
    end

    assert_redirected_to pm_logo_path(assigns(:pm_logo))
  end

  test "should show pm_logo" do
    get :show, id: @pm_logo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pm_logo
    assert_response :success
  end

  test "should update pm_logo" do
    patch :update, id: @pm_logo, pm_logo: { logo: @pm_logo.logo, position: @pm_logo.position }
    assert_redirected_to pm_logo_path(assigns(:pm_logo))
  end

  test "should destroy pm_logo" do
    assert_difference('PmLogo.count', -1) do
      delete :destroy, id: @pm_logo
    end

    assert_redirected_to pm_logos_path
  end
end
