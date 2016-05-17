require 'test_helper'

class CapsuleLearnersControllerTest < ActionController::TestCase
  setup do
    @capsule_learner = capsule_learners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:capsule_learners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create capsule_learner" do
    assert_difference('CapsuleLearner.count') do
      post :create, capsule_learner: { capsule_class_id: @capsule_learner.capsule_class_id, company_name: @capsule_learner.company_name, educational_status: @capsule_learner.educational_status, email: @capsule_learner.email, name: @capsule_learner.name, phone_number: @capsule_learner.phone_number }
    end

    assert_redirected_to capsule_learner_path(assigns(:capsule_learner))
  end

  test "should show capsule_learner" do
    get :show, id: @capsule_learner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @capsule_learner
    assert_response :success
  end

  test "should update capsule_learner" do
    patch :update, id: @capsule_learner, capsule_learner: { capsule_class_id: @capsule_learner.capsule_class_id, company_name: @capsule_learner.company_name, educational_status: @capsule_learner.educational_status, email: @capsule_learner.email, name: @capsule_learner.name, phone_number: @capsule_learner.phone_number }
    assert_redirected_to capsule_learner_path(assigns(:capsule_learner))
  end

  test "should destroy capsule_learner" do
    assert_difference('CapsuleLearner.count', -1) do
      delete :destroy, id: @capsule_learner
    end

    assert_redirected_to capsule_learners_path
  end
end
