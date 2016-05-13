require 'test_helper'

class CarrerPagesControllerTest < ActionController::TestCase
  setup do
    @carrer_page = carrer_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carrer_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carrer_page" do
    assert_difference('CarrerPage.count') do
      post :create, carrer_page: { heading: @carrer_page.heading, highlight_h1: @carrer_page.highlight_h1, highlight_h2: @carrer_page.highlight_h2, highlight_h3: @carrer_page.highlight_h3, highlight_h4: @carrer_page.highlight_h4, highlight_img1: @carrer_page.highlight_img1, highlight_img2: @carrer_page.highlight_img2, highlight_img3: @carrer_page.highlight_img3, highlight_img4: @carrer_page.highlight_img4, highlight_p1: @carrer_page.highlight_p1, highlight_p2: @carrer_page.highlight_p2, highlight_p3: @carrer_page.highlight_p3, highlight_p4: @carrer_page.highlight_p4, hr_email: @carrer_page.hr_email, hr_heading: @carrer_page.hr_heading, img: @carrer_page.img }
    end

    assert_redirected_to carrer_page_path(assigns(:carrer_page))
  end

  test "should show carrer_page" do
    get :show, id: @carrer_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @carrer_page
    assert_response :success
  end

  test "should update carrer_page" do
    patch :update, id: @carrer_page, carrer_page: { heading: @carrer_page.heading, highlight_h1: @carrer_page.highlight_h1, highlight_h2: @carrer_page.highlight_h2, highlight_h3: @carrer_page.highlight_h3, highlight_h4: @carrer_page.highlight_h4, highlight_img1: @carrer_page.highlight_img1, highlight_img2: @carrer_page.highlight_img2, highlight_img3: @carrer_page.highlight_img3, highlight_img4: @carrer_page.highlight_img4, highlight_p1: @carrer_page.highlight_p1, highlight_p2: @carrer_page.highlight_p2, highlight_p3: @carrer_page.highlight_p3, highlight_p4: @carrer_page.highlight_p4, hr_email: @carrer_page.hr_email, hr_heading: @carrer_page.hr_heading, img: @carrer_page.img }
    assert_redirected_to carrer_page_path(assigns(:carrer_page))
  end

  test "should destroy carrer_page" do
    assert_difference('CarrerPage.count', -1) do
      delete :destroy, id: @carrer_page
    end

    assert_redirected_to carrer_pages_path
  end
end
