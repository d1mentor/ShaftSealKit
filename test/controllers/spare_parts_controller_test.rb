require "test_helper"

class SparePartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spare_part = spare_parts(:one)
  end

  test "should get index" do
    get spare_parts_url
    assert_response :success
  end

  test "should get new" do
    get new_spare_part_url
    assert_response :success
  end

  test "should create spare_part" do
    assert_difference('SparePart.count') do
      post spare_parts_url, params: { spare_part: { category_id: @spare_part.category_id, description: @spare_part.description, files: @spare_part.files, images: @spare_part.images, kit_id: @spare_part.kit_id, manufacturer: @spare_part.manufacturer, name: @spare_part.name, tags: @spare_part.tags, weight: @spare_part.weight } }
    end

    assert_redirected_to spare_part_url(SparePart.last)
  end

  test "should show spare_part" do
    get spare_part_url(@spare_part)
    assert_response :success
  end

  test "should get edit" do
    get edit_spare_part_url(@spare_part)
    assert_response :success
  end

  test "should update spare_part" do
    patch spare_part_url(@spare_part), params: { spare_part: { category_id: @spare_part.category_id, description: @spare_part.description, files: @spare_part.files, images: @spare_part.images, kit_id: @spare_part.kit_id, manufacturer: @spare_part.manufacturer, name: @spare_part.name, tags: @spare_part.tags, weight: @spare_part.weight } }
    assert_redirected_to spare_part_url(@spare_part)
  end

  test "should destroy spare_part" do
    assert_difference('SparePart.count', -1) do
      delete spare_part_url(@spare_part)
    end

    assert_redirected_to spare_parts_url
  end
end
