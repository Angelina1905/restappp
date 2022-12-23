require "application_system_test_case"

class NorestsTest < ApplicationSystemTestCase
  setup do
    @norest = norests(:one)
  end

  test "visiting the index" do
    visit norests_url
    assert_selector "h1", text: "Norests"
  end

  test "should create norest" do
    visit norests_url
    click_on "New norest"

    fill_in "Content", with: @norest.content
    fill_in "Name", with: @norest.name
    fill_in "Title", with: @norest.title
    click_on "Create Norest"

    assert_text "Norest was successfully created"
    click_on "Back"
  end

  test "should update Norest" do
    visit norest_url(@norest)
    click_on "Edit this norest", match: :first

    fill_in "Content", with: @norest.content
    fill_in "Name", with: @norest.name
    fill_in "Title", with: @norest.title
    click_on "Update Norest"

    assert_text "Norest was successfully updated"
    click_on "Back"
  end

  test "should destroy Norest" do
    visit norest_url(@norest)
    click_on "Destroy this norest", match: :first

    assert_text "Norest was successfully destroyed"
  end
end
