require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    fill_in "Chapter", with: @user.Chapter_id
    fill_in "Collection", with: @user.Collection_id
    fill_in "Comment", with: @user.Comment_id
    fill_in "Like", with: @user.Like_id
    fill_in "Story", with: @user.Story_id
    fill_in "Subs", with: @user.Subs_id
    fill_in "Avatar", with: @user.avatar
    fill_in "Bio", with: @user.bio
    check "Is admin" if @user.is_admin
    check "Is mail public" if @user.is_mail_public
    check "Is phone piblic" if @user.is_phone_piblic
    fill_in "Mail", with: @user.mail
    fill_in "Phone", with: @user.phone
    fill_in "User name", with: @user.user_name
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    fill_in "Chapter", with: @user.Chapter_id
    fill_in "Collection", with: @user.Collection_id
    fill_in "Comment", with: @user.Comment_id
    fill_in "Like", with: @user.Like_id
    fill_in "Story", with: @user.Story_id
    fill_in "Subs", with: @user.Subs_id
    fill_in "Avatar", with: @user.avatar
    fill_in "Bio", with: @user.bio
    check "Is admin" if @user.is_admin
    check "Is mail public" if @user.is_mail_public
    check "Is phone piblic" if @user.is_phone_piblic
    fill_in "Mail", with: @user.mail
    fill_in "Phone", with: @user.phone
    fill_in "User name", with: @user.user_name
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
