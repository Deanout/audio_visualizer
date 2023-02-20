require "application_system_test_case"

class SoundsTest < ApplicationSystemTestCase
  setup do
    @sound = sounds(:one)
  end

  test "visiting the index" do
    visit sounds_url
    assert_selector "h1", text: "Sounds"
  end

  test "should create sound" do
    visit sounds_url
    click_on "New sound"

    fill_in "Description", with: @sound.description
    fill_in "Name", with: @sound.name
    click_on "Create Sound"

    assert_text "Sound was successfully created"
    click_on "Back"
  end

  test "should update Sound" do
    visit sound_url(@sound)
    click_on "Edit this sound", match: :first

    fill_in "Description", with: @sound.description
    fill_in "Name", with: @sound.name
    click_on "Update Sound"

    assert_text "Sound was successfully updated"
    click_on "Back"
  end

  test "should destroy Sound" do
    visit sound_url(@sound)
    click_on "Destroy this sound", match: :first

    assert_text "Sound was successfully destroyed"
  end
end
