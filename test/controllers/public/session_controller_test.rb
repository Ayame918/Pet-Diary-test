require "test_helper"

class Public::SessionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_session_new_url
    assert_response :success
  end

  test "should get create" do
    get public_session_create_url
    assert_response :success
  end

  test "should get destroy" do
    get public_session_destroy_url
    assert_response :success
  end
end
