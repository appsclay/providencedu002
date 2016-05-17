require 'test_helper'

class CapsuleClassesControllerTest < ActionController::TestCase
  setup do
    @capsule_class = capsule_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:capsule_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create capsule_class" do
    assert_difference('CapsuleClass.count') do
      post :create, capsule_class: { benifits: @capsule_class.benifits, display: @capsule_class.display, duration: @capsule_class.duration, guest_lecturer: @capsule_class.guest_lecturer, starting_date: @capsule_class.starting_date, title: @capsule_class.title }
    end

    assert_redirected_to capsule_class_path(assigns(:capsule_class))
  end

  test "should show capsule_class" do
    get :show, id: @capsule_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @capsule_class
    assert_response :success
  end

  test "should update capsule_class" do
    patch :update, id: @capsule_class, capsule_class: { benifits: @capsule_class.benifits, display: @capsule_class.display, duration: @capsule_class.duration, guest_lecturer: @capsule_class.guest_lecturer, starting_date: @capsule_class.starting_date, title: @capsule_class.title }
    assert_redirected_to capsule_class_path(assigns(:capsule_class))
  end

  test "should destroy capsule_class" do
    assert_difference('CapsuleClass.count', -1) do
      delete :destroy, id: @capsule_class
    end

    assert_redirected_to capsule_classes_path
  end
end
