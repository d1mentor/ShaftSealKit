require "application_system_test_case"

class KitsTest < ApplicationSystemTestCase
  setup do
    @kit = kits(:one)
  end

  test "visiting the index" do
    visit kits_url
    assert_selector "h1", text: "Kits"
  end

  test "creating a Kit" do
    visit kits_url
    click_on "New Kit"

    fill_in "Additional", with: @kit.additional
    fill_in "Category", with: @kit.category_id
    fill_in "Height", with: @kit.height
    fill_in "Offer", with: @kit.offer_id
    fill_in "Tags", with: @kit.tags
    fill_in "Weight", with: @kit.weight
    fill_in "Width", with: @kit.width
    click_on "Create Kit"

    assert_text "Kit was successfully created"
    click_on "Back"
  end

  test "updating a Kit" do
    visit kits_url
    click_on "Edit", match: :first

    fill_in "Additional", with: @kit.additional
    fill_in "Category", with: @kit.category_id
    fill_in "Height", with: @kit.height
    fill_in "Offer", with: @kit.offer_id
    fill_in "Tags", with: @kit.tags
    fill_in "Weight", with: @kit.weight
    fill_in "Width", with: @kit.width
    click_on "Update Kit"

    assert_text "Kit was successfully updated"
    click_on "Back"
  end

  test "destroying a Kit" do
    visit kits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kit was successfully destroyed"
  end
end
