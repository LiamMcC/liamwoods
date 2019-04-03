require "application_system_test_case"

class GolfcatsTest < ApplicationSystemTestCase
  setup do
    @golfcat = golfcats(:one)
  end

  test "visiting the index" do
    visit golfcats_url
    assert_selector "h1", text: "Golfcats"
  end

  test "creating a Golfcat" do
    visit golfcats_url
    click_on "New Golfcat"

    fill_in "Description", with: @golfcat.description
    fill_in "Image", with: @golfcat.image
    fill_in "Title", with: @golfcat.title
    click_on "Create Golfcat"

    assert_text "Golfcat was successfully created"
    click_on "Back"
  end

  test "updating a Golfcat" do
    visit golfcats_url
    click_on "Edit", match: :first

    fill_in "Description", with: @golfcat.description
    fill_in "Image", with: @golfcat.image
    fill_in "Title", with: @golfcat.title
    click_on "Update Golfcat"

    assert_text "Golfcat was successfully updated"
    click_on "Back"
  end

  test "destroying a Golfcat" do
    visit golfcats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Golfcat was successfully destroyed"
  end
end
