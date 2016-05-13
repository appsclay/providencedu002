require 'test_helper'

class TermPagesControllerTest < ActionController::TestCase
  setup do
    @term_page = term_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:term_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create term_page" do
    assert_difference('TermPage.count') do
      post :create, term_page: { script: @term_page.script }
    end

    assert_redirected_to term_page_path(assigns(:term_page))
  end

  test "should show term_page" do
    get :show, id: @term_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @term_page
    assert_response :success
  end

  test "should update term_page" do
    patch :update, id: @term_page, term_page: { script: @term_page.script }
    assert_redirected_to term_page_path(assigns(:term_page))
  end

  test "should destroy term_page" do
    assert_difference('TermPage.count', -1) do
      delete :destroy, id: @term_page
    end

    assert_redirected_to term_pages_path
  end
end
