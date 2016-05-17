require 'test_helper'

class FreeStudyMaterialsControllerTest < ActionController::TestCase
  setup do
    @capsule_class = capsule_classes(:one)
    @free_study_material = free_study_materials(:one)
  end

  test "should get index" do
    get :index, params: { capsule_class_id: @capsule_class }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { capsule_class_id: @capsule_class }
    assert_response :success
  end

  test "should create free_study_material" do
    assert_difference('FreeStudyMaterial.count') do
      post :create, params: { capsule_class_id: @capsule_class, free_study_material: @free_study_material.attributes }
    end

    assert_redirected_to capsule_class_free_study_material_path(@capsule_class, FreeStudyMaterial.last)
  end

  test "should show free_study_material" do
    get :show, params: { capsule_class_id: @capsule_class, id: @free_study_material }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { capsule_class_id: @capsule_class, id: @free_study_material }
    assert_response :success
  end

  test "should update free_study_material" do
    put :update, params: { capsule_class_id: @capsule_class, id: @free_study_material, free_study_material: @free_study_material.attributes }
    assert_redirected_to capsule_class_free_study_material_path(@capsule_class, FreeStudyMaterial.last)
  end

  test "should destroy free_study_material" do
    assert_difference('FreeStudyMaterial.count', -1) do
      delete :destroy, params: { capsule_class_id: @capsule_class, id: @free_study_material }
    end

    assert_redirected_to capsule_class_free_study_materials_path(@capsule_class)
  end
end
