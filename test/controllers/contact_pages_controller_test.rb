require 'test_helper'

class ContactPagesControllerTest < ActionController::TestCase
  setup do
    @contact_page = contact_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_page" do
    assert_difference('ContactPage.count') do
      post :create, contact_page: { address: @contact_page.address, anthem_heading: @contact_page.anthem_heading, anthem_sub_heading: @contact_page.anthem_sub_heading, bottom_heading: @contact_page.bottom_heading, bottom_subheading: @contact_page.bottom_subheading, career_text: @contact_page.career_text, career_url: @contact_page.career_url, contact_person_email: @contact_page.contact_person_email, contact_person_name: @contact_page.contact_person_name, contact_person_phone: @contact_page.contact_person_phone, img: @contact_page.img, img_heading: @contact_page.img_heading, img_sub_heading: @contact_page.img_sub_heading, map_latitude: @contact_page.map_latitude, map_longitude: @contact_page.map_longitude }
    end

    assert_redirected_to contact_page_path(assigns(:contact_page))
  end

  test "should show contact_page" do
    get :show, id: @contact_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_page
    assert_response :success
  end

  test "should update contact_page" do
    patch :update, id: @contact_page, contact_page: { address: @contact_page.address, anthem_heading: @contact_page.anthem_heading, anthem_sub_heading: @contact_page.anthem_sub_heading, bottom_heading: @contact_page.bottom_heading, bottom_subheading: @contact_page.bottom_subheading, career_text: @contact_page.career_text, career_url: @contact_page.career_url, contact_person_email: @contact_page.contact_person_email, contact_person_name: @contact_page.contact_person_name, contact_person_phone: @contact_page.contact_person_phone, img: @contact_page.img, img_heading: @contact_page.img_heading, img_sub_heading: @contact_page.img_sub_heading, map_latitude: @contact_page.map_latitude, map_longitude: @contact_page.map_longitude }
    assert_redirected_to contact_page_path(assigns(:contact_page))
  end

  test "should destroy contact_page" do
    assert_difference('ContactPage.count', -1) do
      delete :destroy, id: @contact_page
    end

    assert_redirected_to contact_pages_path
  end
end
