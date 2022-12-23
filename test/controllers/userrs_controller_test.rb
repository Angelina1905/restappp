require "test_helper"

class UserrsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get userrs_index_url
    assert_response :success
  end

  test "should get create" do
    get userrs_create_url
    assert_response :success
  end

  test "should get update" do
    get userrs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get userrs_destroy_url
    assert_response :success
  end
end
