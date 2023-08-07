require "application_system_test_case"

class FacturasTest < ApplicationSystemTestCase
  setup do
    @factura = facturas(:one)
  end

  test "visiting the index" do
    visit facturas_url
    assert_selector "h1", text: "Facturas"
  end

  test "creating a Factura" do
    visit facturas_url
    click_on "New Factura"

    fill_in "Additional", with: @factura.additional
    fill_in "Bid", with: @factura.bid_id
    fill_in "Facturownia", with: @factura.facturownia_id
    fill_in "Files", with: @factura.files
    fill_in "Offer", with: @factura.offer_id
    fill_in "Status", with: @factura.status
    fill_in "Sum", with: @factura.sum
    fill_in "Sum currency", with: @factura.sum_currency
    fill_in "Tags", with: @factura.tags
    click_on "Create Factura"

    assert_text "Factura was successfully created"
    click_on "Back"
  end

  test "updating a Factura" do
    visit facturas_url
    click_on "Edit", match: :first

    fill_in "Additional", with: @factura.additional
    fill_in "Bid", with: @factura.bid_id
    fill_in "Facturownia", with: @factura.facturownia_id
    fill_in "Files", with: @factura.files
    fill_in "Offer", with: @factura.offer_id
    fill_in "Status", with: @factura.status
    fill_in "Sum", with: @factura.sum
    fill_in "Sum currency", with: @factura.sum_currency
    fill_in "Tags", with: @factura.tags
    click_on "Update Factura"

    assert_text "Factura was successfully updated"
    click_on "Back"
  end

  test "destroying a Factura" do
    visit facturas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Factura was successfully destroyed"
  end
end
