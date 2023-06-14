require "test_helper"

class MessangerControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get messanger_home_url
    assert_response :success
  end

  test "should get chat" do
    get messanger_chat_url
    assert_response :success
  end

  test "should get settings" do
    get messanger_settings_url
    assert_response :success
  end
end
