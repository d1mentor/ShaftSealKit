require "application_system_test_case"

class OffersTest < ApplicationSystemTestCase
  setup do
    @offer = offers(:one)
  end

  test "visiting the index" do
    visit offers_url
    assert_selector "h1", text: "Offers"
  end

  test "creating a Offer" do
    visit offers_url
    click_on "New Offer"

    fill_in "Additional", with: @offer.additional
    fill_in "Bid", with: @offer.bid_id
    fill_in "Client", with: @offer.client_id
    fill_in "Files", with: @offer.files
    check "Incoming" if @offer.incoming
    fill_in "Status", with: @offer.status
    fill_in "Supplier", with: @offer.supplier_id
    fill_in "Tags", with: @offer.tags
    fill_in "Type", with: @offer.type
    click_on "Create Offer"

    assert_text "Offer was successfully created"
    click_on "Back"
  end

  test "updating a Offer" do
    visit offers_url
    click_on "Edit", match: :first

    fill_in "Additional", with: @offer.additional
    fill_in "Bid", with: @offer.bid_id
    fill_in "Client", with: @offer.client_id
    fill_in "Files", with: @offer.files
    check "Incoming" if @offer.incoming
    fill_in "Status", with: @offer.status
    fill_in "Supplier", with: @offer.supplier_id
    fill_in "Tags", with: @offer.tags
    fill_in "Type", with: @offer.type
    click_on "Update Offer"

    assert_text "Offer was successfully updated"
    click_on "Back"
  end

  test "destroying a Offer" do
    visit offers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Offer was successfully destroyed"
  end
end
