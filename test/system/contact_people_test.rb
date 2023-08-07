require "application_system_test_case"

class ContactPeopleTest < ApplicationSystemTestCase
  setup do
    @contact_person = contact_people(:one)
  end

  test "visiting the index" do
    visit contact_people_url
    assert_selector "h1", text: "Contact People"
  end

  test "creating a Contact person" do
    visit contact_people_url
    click_on "New Contact Person"

    fill_in "Additional", with: @contact_person.additional
    fill_in "Client", with: @contact_person.client_id
    fill_in "Email", with: @contact_person.email
    fill_in "Name", with: @contact_person.name
    fill_in "Phone", with: @contact_person.phone
    fill_in "Supplier", with: @contact_person.supplier_id
    fill_in "Tags", with: @contact_person.tags
    click_on "Create Contact person"

    assert_text "Contact person was successfully created"
    click_on "Back"
  end

  test "updating a Contact person" do
    visit contact_people_url
    click_on "Edit", match: :first

    fill_in "Additional", with: @contact_person.additional
    fill_in "Client", with: @contact_person.client_id
    fill_in "Email", with: @contact_person.email
    fill_in "Name", with: @contact_person.name
    fill_in "Phone", with: @contact_person.phone
    fill_in "Supplier", with: @contact_person.supplier_id
    fill_in "Tags", with: @contact_person.tags
    click_on "Update Contact person"

    assert_text "Contact person was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact person" do
    visit contact_people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact person was successfully destroyed"
  end
end
