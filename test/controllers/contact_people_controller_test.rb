require "test_helper"

class ContactPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_person = contact_people(:one)
  end

  test "should get index" do
    get contact_people_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_person_url
    assert_response :success
  end

  test "should create contact_person" do
    assert_difference('ContactPerson.count') do
      post contact_people_url, params: { contact_person: { additional: @contact_person.additional, client_id: @contact_person.client_id, email: @contact_person.email, name: @contact_person.name, phone: @contact_person.phone, supplier_id: @contact_person.supplier_id, tags: @contact_person.tags } }
    end

    assert_redirected_to contact_person_url(ContactPerson.last)
  end

  test "should show contact_person" do
    get contact_person_url(@contact_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_person_url(@contact_person)
    assert_response :success
  end

  test "should update contact_person" do
    patch contact_person_url(@contact_person), params: { contact_person: { additional: @contact_person.additional, client_id: @contact_person.client_id, email: @contact_person.email, name: @contact_person.name, phone: @contact_person.phone, supplier_id: @contact_person.supplier_id, tags: @contact_person.tags } }
    assert_redirected_to contact_person_url(@contact_person)
  end

  test "should destroy contact_person" do
    assert_difference('ContactPerson.count', -1) do
      delete contact_person_url(@contact_person)
    end

    assert_redirected_to contact_people_url
  end
end
