require "test_helper"

class KitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kit = kits(:one)
  end

  test "should get index" do
    get kits_url
    assert_response :success
  end

  test "should get new" do
    get new_kit_url
    assert_response :success
  end

  test "should create kit" do
    assert_difference('Kit.count') do
      post kits_url, params: { kit: { additional: @kit.additional, category_id: @kit.category_id, height: @kit.height, offer_id: @kit.offer_id, tags: @kit.tags, weight: @kit.weight, width: @kit.width } }
    end

    assert_redirected_to kit_url(Kit.last)
  end

  test "should show kit" do
    get kit_url(@kit)
    assert_response :success
  end

  test "should get edit" do
    get edit_kit_url(@kit)
    assert_response :success
  end

  test "should update kit" do
    patch kit_url(@kit), params: { kit: { additional: @kit.additional, category_id: @kit.category_id, height: @kit.height, offer_id: @kit.offer_id, tags: @kit.tags, weight: @kit.weight, width: @kit.width } }
    assert_redirected_to kit_url(@kit)
  end

  test "should destroy kit" do
    assert_difference('Kit.count', -1) do
      delete kit_url(@kit)
    end

    assert_redirected_to kits_url
  end
end
