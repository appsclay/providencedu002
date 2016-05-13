require 'test_helper'

class FeeStructuresControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
    @fee_structure = fee_structures(:one)
  end

  test "should get index" do
    get :index, params: { course_id: @course }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { course_id: @course }
    assert_response :success
  end

  test "should create fee_structure" do
    assert_difference('FeeStructure.count') do
      post :create, params: { course_id: @course, fee_structure: @fee_structure.attributes }
    end

    assert_redirected_to course_fee_structure_path(@course, FeeStructure.last)
  end

  test "should show fee_structure" do
    get :show, params: { course_id: @course, id: @fee_structure }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { course_id: @course, id: @fee_structure }
    assert_response :success
  end

  test "should update fee_structure" do
    put :update, params: { course_id: @course, id: @fee_structure, fee_structure: @fee_structure.attributes }
    assert_redirected_to course_fee_structure_path(@course, FeeStructure.last)
  end

  test "should destroy fee_structure" do
    assert_difference('FeeStructure.count', -1) do
      delete :destroy, params: { course_id: @course, id: @fee_structure }
    end

    assert_redirected_to course_fee_structures_path(@course)
  end
end
