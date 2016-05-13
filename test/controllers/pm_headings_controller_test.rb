require 'test_helper'

class PmHeadingsControllerTest < ActionController::TestCase
  setup do
    @pm_heading = pm_headings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pm_headings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pm_heading" do
    assert_difference('PmHeading.count') do
      post :create, pm_heading: { heading: @pm_heading.heading }
    end

    assert_redirected_to pm_heading_path(assigns(:pm_heading))
  end

  test "should show pm_heading" do
    get :show, id: @pm_heading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pm_heading
    assert_response :success
  end

  test "should update pm_heading" do
    patch :update, id: @pm_heading, pm_heading: { heading: @pm_heading.heading }
    assert_redirected_to pm_heading_path(assigns(:pm_heading))
  end

  test "should destroy pm_heading" do
    assert_difference('PmHeading.count', -1) do
      delete :destroy, id: @pm_heading
    end

    assert_redirected_to pm_headings_path
  end
end
