require 'test_helper'

class BannerSectionsControllerTest < ActionController::TestCase
  setup do
    @banner_section = banner_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:banner_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create banner_section" do
    assert_difference('BannerSection.count') do
      post :create, banner_section: { banner_button_text: @banner_section.banner_button_text, banner_button_url: @banner_section.banner_button_url, banner_heading: @banner_section.banner_heading, banner_img: @banner_section.banner_img }
    end

    assert_redirected_to banner_section_path(assigns(:banner_section))
  end

  test "should show banner_section" do
    get :show, id: @banner_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @banner_section
    assert_response :success
  end

  test "should update banner_section" do
    patch :update, id: @banner_section, banner_section: { banner_button_text: @banner_section.banner_button_text, banner_button_url: @banner_section.banner_button_url, banner_heading: @banner_section.banner_heading, banner_img: @banner_section.banner_img }
    assert_redirected_to banner_section_path(assigns(:banner_section))
  end

  test "should destroy banner_section" do
    assert_difference('BannerSection.count', -1) do
      delete :destroy, id: @banner_section
    end

    assert_redirected_to banner_sections_path
  end
end
