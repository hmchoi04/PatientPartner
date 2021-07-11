require "application_system_test_case"

class ViewPartnersTest < ApplicationSystemTestCase
  setup do
    @view_partner = view_partners(:one)
  end

  test "visiting the index" do
    visit view_partners_url
    assert_selector "h1", text: "View Partners"
  end

  test "creating a View partner" do
    visit view_partners_url
    click_on "New View Partner"

    fill_in "First name", with: @view_partner.first_name
    fill_in "Last name", with: @view_partner.last_name
    fill_in "String,", with: @view_partner.string,
    click_on "Create View partner"

    assert_text "View partner was successfully created"
    click_on "Back"
  end

  test "updating a View partner" do
    visit view_partners_url
    click_on "Edit", match: :first

    fill_in "First name", with: @view_partner.first_name
    fill_in "Last name", with: @view_partner.last_name
    fill_in "String,", with: @view_partner.string,
    click_on "Update View partner"

    assert_text "View partner was successfully updated"
    click_on "Back"
  end

  test "destroying a View partner" do
    visit view_partners_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "View partner was successfully destroyed"
  end
end
