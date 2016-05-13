require 'test_helper'

class LearnersControllerTest < ActionController::TestCase
  setup do
    @learner = learners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:learners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create learner" do
    assert_difference('Learner.count') do
      post :create, learner: { company_name: @learner.company_name, course_id: @learner.course_id, course_type: @learner.course_type, educational_status: @learner.educational_status, email: @learner.email, name: @learner.name, phone_number: @learner.phone_number }
    end

    assert_redirected_to learner_path(assigns(:learner))
  end

  test "should show learner" do
    get :show, id: @learner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @learner
    assert_response :success
  end

  test "should update learner" do
    patch :update, id: @learner, learner: { company_name: @learner.company_name, course_id: @learner.course_id, course_type: @learner.course_type, educational_status: @learner.educational_status, email: @learner.email, name: @learner.name, phone_number: @learner.phone_number }
    assert_redirected_to learner_path(assigns(:learner))
  end

  test "should destroy learner" do
    assert_difference('Learner.count', -1) do
      delete :destroy, id: @learner
    end

    assert_redirected_to learners_path
  end
end
