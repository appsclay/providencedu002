require 'test_helper'

class CorporateTrainerHeadingsControllerTest < ActionController::TestCase
  setup do
    @corporate_trainer_heading = corporate_trainer_headings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:corporate_trainer_headings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create corporate_trainer_heading" do
    assert_difference('CorporateTrainerHeading.count') do
      post :create, corporate_trainer_heading: { heading: @corporate_trainer_heading.heading }
    end

    assert_redirected_to corporate_trainer_heading_path(assigns(:corporate_trainer_heading))
  end

  test "should show corporate_trainer_heading" do
    get :show, id: @corporate_trainer_heading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @corporate_trainer_heading
    assert_response :success
  end

  test "should update corporate_trainer_heading" do
    patch :update, id: @corporate_trainer_heading, corporate_trainer_heading: { heading: @corporate_trainer_heading.heading }
    assert_redirected_to corporate_trainer_heading_path(assigns(:corporate_trainer_heading))
  end

  test "should destroy corporate_trainer_heading" do
    assert_difference('CorporateTrainerHeading.count', -1) do
      delete :destroy, id: @corporate_trainer_heading
    end

    assert_redirected_to corporate_trainer_headings_path
  end
end
