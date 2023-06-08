require "test_helper"

class CutawayControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cutaway_index_url
    assert_response :success
  end

  test "should get privacy_policy" do
    get cutaway_privacy_policy_url
    assert_response :success
  end

  test "should get terms_of_service" do
    get cutaway_terms_of_service_url
    assert_response :success
  end
end
