require "test_helper"

class ForksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fork = forks(:one)
  end

  test "should get index" do
    get forks_url
    assert_response :success
  end

  test "should get new" do
    get new_fork_url
    assert_response :success
  end

  test "should create fork" do
    assert_difference("Fork.count") do
      post forks_url, params: { fork: { Chapter_id: @fork.Chapter_id, Story_id: @fork.Story_id, place: @fork.place } }
    end

    assert_redirected_to fork_url(Fork.last)
  end

  test "should show fork" do
    get fork_url(@fork)
    assert_response :success
  end

  test "should get edit" do
    get edit_fork_url(@fork)
    assert_response :success
  end

  test "should update fork" do
    patch fork_url(@fork), params: { fork: { Chapter_id: @fork.Chapter_id, Story_id: @fork.Story_id, place: @fork.place } }
    assert_redirected_to fork_url(@fork)
  end

  test "should destroy fork" do
    assert_difference("Fork.count", -1) do
      delete fork_url(@fork)
    end

    assert_redirected_to forks_url
  end
end
