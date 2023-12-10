require "test_helper"

class Public::FollowingsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get public_followings_create_url
    assert_response :success
  end

  test "should get destroy" do
    get public_followings_destroy_url
    assert_response :success
  end
end
