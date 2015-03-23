require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get theems" do
    get :theems
    assert_response :success
  end

  test "should get downloads" do
    get :downloads
    assert_response :success
  end

  test "should get app" do
    get :app
    assert_response :success
  end

  test "should get about_us" do
    get :about_us
    assert_response :success
  end

  test "should get contact_us" do
    get :contact_us
    assert_response :success
  end

end
