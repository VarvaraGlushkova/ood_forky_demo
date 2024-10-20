require "application_system_test_case"

class ForksTest < ApplicationSystemTestCase
  setup do
    @fork = forks(:one)
  end

  test "visiting the index" do
    visit forks_url
    assert_selector "h1", text: "Forks"
  end

  test "should create fork" do
    visit forks_url
    click_on "New fork"

    fill_in "Chapter", with: @fork.Chapter_id
    fill_in "Story", with: @fork.Story_id
    fill_in "Place", with: @fork.place
    click_on "Create Fork"

    assert_text "Fork was successfully created"
    click_on "Back"
  end

  test "should update Fork" do
    visit fork_url(@fork)
    click_on "Edit this fork", match: :first

    fill_in "Chapter", with: @fork.Chapter_id
    fill_in "Story", with: @fork.Story_id
    fill_in "Place", with: @fork.place
    click_on "Update Fork"

    assert_text "Fork was successfully updated"
    click_on "Back"
  end

  test "should destroy Fork" do
    visit fork_url(@fork)
    click_on "Destroy this fork", match: :first

    assert_text "Fork was successfully destroyed"
  end
end
