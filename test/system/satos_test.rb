require "application_system_test_case"

class SatosTest < ApplicationSystemTestCase
  setup do
    @sato = satos(:one)
  end

  test "visiting the index" do
    visit satos_url
    assert_selector "h1", text: "Satos"
  end

  test "creating a Sato" do
    visit satos_url
    click_on "New Sato"

    fill_in "Context", with: @sato.context
    fill_in "Title", with: @sato.title
    click_on "Create Sato"

    assert_text "Sato was successfully created"
    click_on "Back"
  end

  test "updating a Sato" do
    visit satos_url
    click_on "Edit", match: :first

    fill_in "Context", with: @sato.context
    fill_in "Title", with: @sato.title
    click_on "Update Sato"

    assert_text "Sato was successfully updated"
    click_on "Back"
  end

  test "destroying a Sato" do
    visit satos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sato was successfully destroyed"
  end
end
