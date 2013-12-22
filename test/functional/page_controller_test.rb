require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about_us" do
    get :about_us
    assert_response :success
  end

  test "should get all_event" do
    get :all_event
    assert_response :success
  end

  test "should get event_details" do
    get :event_details
    assert_response :success
  end

  test "should get event_preview" do
    get :event_preview
    assert_response :success
  end

  test "should get event_publish" do
    get :event_publish
    assert_response :success
  end

  test "should get my_ticket" do
    get :my_ticket
    assert_response :success
  end

  test "should get my_event" do
    get :my_event
    assert_response :success
  end

  test "should get contact_us" do
    get :contact_us
    assert_response :success
  end

end
