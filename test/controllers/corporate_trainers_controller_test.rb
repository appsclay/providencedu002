require 'test_helper'

class CorporateTrainersControllerTest < ActionController::TestCase
  setup do
    @corporate_trainer = corporate_trainers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:corporate_trainers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create corporate_trainer" do
    assert_difference('CorporateTrainer.count') do
      post :create, corporate_trainer: { designation: @corporate_trainer.designation, extra: @corporate_trainer.extra, img: @corporate_trainer.img, name: @corporate_trainer.name }
    end

    assert_redirected_to corporate_trainer_path(assigns(:corporate_trainer))
  end

  test "should show corporate_trainer" do
    get :show, id: @corporate_trainer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @corporate_trainer
    assert_response :success
  end

  test "should update corporate_trainer" do
    patch :update, id: @corporate_trainer, corporate_trainer: { designation: @corporate_trainer.designation, extra: @corporate_trainer.extra, img: @corporate_trainer.img, name: @corporate_trainer.name }
    assert_redirected_to corporate_trainer_path(assigns(:corporate_trainer))
  end

  test "should destroy corporate_trainer" do
    assert_difference('CorporateTrainer.count', -1) do
      delete :destroy, id: @corporate_trainer
    end

    assert_redirected_to corporate_trainers_path
  end
end
