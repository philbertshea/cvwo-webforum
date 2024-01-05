require "application_system_test_case"

class FpostsTest < ApplicationSystemTestCase
  setup do
    @fpost = fposts(:one)
  end

  test "visiting the index" do
    visit fposts_url
    assert_selector "h1", text: "Fposts"
  end

  test "should create fpost" do
    visit fposts_url
    click_on "New fpost"

    fill_in "Post datetime", with: @fpost.post_datetime
    fill_in "Post text", with: @fpost.post_text
    fill_in "Post title", with: @fpost.post_title
    fill_in "Post user", with: @fpost.post_user_id
    click_on "Create Fpost"

    assert_text "Fpost was successfully created"
    click_on "Back"
  end

  test "should update Fpost" do
    visit fpost_url(@fpost)
    click_on "Edit this fpost", match: :first

    fill_in "Post datetime", with: @fpost.post_datetime
    fill_in "Post text", with: @fpost.post_text
    fill_in "Post title", with: @fpost.post_title
    fill_in "Post user", with: @fpost.post_user_id
    click_on "Update Fpost"

    assert_text "Fpost was successfully updated"
    click_on "Back"
  end

  test "should destroy Fpost" do
    visit fpost_url(@fpost)
    click_on "Destroy this fpost", match: :first

    assert_text "Fpost was successfully destroyed"
  end
end
