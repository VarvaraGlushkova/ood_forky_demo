require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { Chapter_id: @user.Chapter_id, Collection_id: @user.Collection_id, Comment_id: @user.Comment_id, Like_id: @user.Like_id, Story_id: @user.Story_id, Subs_id: @user.Subs_id, avatar: @user.avatar, bio: @user.bio, is_admin: @user.is_admin, is_mail_public: @user.is_mail_public, is_phone_piblic: @user.is_phone_piblic, mail: @user.mail, phone: @user.phone, user_name: @user.user_name } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { Chapter_id: @user.Chapter_id, Collection_id: @user.Collection_id, Comment_id: @user.Comment_id, Like_id: @user.Like_id, Story_id: @user.Story_id, Subs_id: @user.Subs_id, avatar: @user.avatar, bio: @user.bio, is_admin: @user.is_admin, is_mail_public: @user.is_mail_public, is_phone_piblic: @user.is_phone_piblic, mail: @user.mail, phone: @user.phone, user_name: @user.user_name } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
