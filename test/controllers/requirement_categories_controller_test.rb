require 'test_helper'

class RequirementCategoriesControllerTest < ActionController::TestCase
  setup do
    @position = positions(:one)
    @requirement_category = requirement_categories(:one)
  end

  test "should get index" do
    get :index, params: { position_id: @position }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { position_id: @position }
    assert_response :success
  end

  test "should create requirement_category" do
    assert_difference('RequirementCategory.count') do
      post :create, params: { position_id: @position, requirement_category: @requirement_category.attributes }
    end

    assert_redirected_to position_requirement_category_path(@position, RequirementCategory.last)
  end

  test "should show requirement_category" do
    get :show, params: { position_id: @position, id: @requirement_category }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { position_id: @position, id: @requirement_category }
    assert_response :success
  end

  test "should update requirement_category" do
    put :update, params: { position_id: @position, id: @requirement_category, requirement_category: @requirement_category.attributes }
    assert_redirected_to position_requirement_category_path(@position, RequirementCategory.last)
  end

  test "should destroy requirement_category" do
    assert_difference('RequirementCategory.count', -1) do
      delete :destroy, params: { position_id: @position, id: @requirement_category }
    end

    assert_redirected_to position_requirement_categories_path(@position)
  end
end
