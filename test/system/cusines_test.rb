require "application_system_test_case"

class CusinesTest < ApplicationSystemTestCase
  setup do
    @cuisine = cusines(:one)
  end

  test "visiting the index" do
    visit cusines_url
    assert_selector "h1", text: "Cusines"
  end

  test "creating a Cusine" do
    visit cusines_url
    click_on "New Cusine"

    fill_in " Name", with: @cusine. name
    fill_in "Reference", with: @cuisine.reference
    click_on "Create Cusine"

    assert_text "Cusine was successfully created"
    click_on "Back"
  end

  test "updating a Cusine" do
    visit cusines_url
    click_on "Edit", match: :first

    fill_in " Name", with: @cuisine. name
    fill_in "Reference", with: @cuisine.reference
    click_on "Update Cusine"

    assert_text "Cusine was successfully updated"
    click_on "Back"
  end

  test "destroying a Cusine" do
    visit cusines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cusine was successfully destroyed"
  end
end
