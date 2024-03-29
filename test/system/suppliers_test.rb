require "application_system_test_case"

class SuppliersTest < ApplicationSystemTestCase
  setup do
    @supplier = suppliers(:one)
  end

  test "visiting the index" do
    visit suppliers_url
    assert_selector "h1", text: "Suppliers"
  end

  test "creating a Supplier" do
    visit suppliers_url
    click_on "New Supplier"

    fill_in "Additional", with: @supplier.additional
    fill_in "Location", with: @supplier.location
    fill_in "Name", with: @supplier.name
    fill_in "Tags", with: @supplier.tags
    fill_in "Vat", with: @supplier.vat
    click_on "Create Supplier"

    assert_text "Supplier was successfully created"
    click_on "Back"
  end

  test "updating a Supplier" do
    visit suppliers_url
    click_on "Edit", match: :first

    fill_in "Additional", with: @supplier.additional
    fill_in "Location", with: @supplier.location
    fill_in "Name", with: @supplier.name
    fill_in "Tags", with: @supplier.tags
    fill_in "Vat", with: @supplier.vat
    click_on "Update Supplier"

    assert_text "Supplier was successfully updated"
    click_on "Back"
  end

  test "destroying a Supplier" do
    visit suppliers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Supplier was successfully destroyed"
  end
end
