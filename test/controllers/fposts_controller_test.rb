require "test_helper"

class FpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fpost = fposts(:one)
  end

  test "should get index" do
    get fposts_url
    assert_response :success
  end

  test "should get new" do
    get new_fpost_url
    assert_response :success
  end

  test "should create fpost" do
    assert_difference("Fpost.count") do
      post fposts_url, params: { fpost: { post_datetime: @fpost.post_datetime, post_text: @fpost.post_text, post_title: @fpost.post_title, post_user_id: @fpost.post_user_id } }
    end

    assert_redirected_to fpost_url(Fpost.last)
  end

  test "should show fpost" do
    get fpost_url(@fpost)
    assert_response :success
  end

  test "should get edit" do
    get edit_fpost_url(@fpost)
    assert_response :success
  end

  test "should update fpost" do
    patch fpost_url(@fpost), params: { fpost: { post_datetime: @fpost.post_datetime, post_text: @fpost.post_text, post_title: @fpost.post_title, post_user_id: @fpost.post_user_id } }
    assert_redirected_to fpost_url(@fpost)
  end

  test "should destroy fpost" do
    assert_difference("Fpost.count", -1) do
      delete fpost_url(@fpost)
    end

    assert_redirected_to fposts_url
  end
end
