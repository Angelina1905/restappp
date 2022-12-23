require "test_helper"

class NorestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @norest = norests(:one)
  end

  test "should get index" do
    get norests_url
    assert_response :success
  end

  test "should get new" do
    get new_norest_url
    assert_response :success
  end

  test "should create norest" do
    assert_difference("Norest.count") do
      post norests_url, params: { norest: { content: @norest.content, name: @norest.name, title: @norest.title } }
    end

    assert_redirected_to norest_url(Norest.last)
  end

  test "should show norest" do
    get norest_url(@norest)
    assert_response :success
  end

  test "should get edit" do
    get edit_norest_url(@norest)
    assert_response :success
  end

  test "should update norest" do
    patch norest_url(@norest), params: { norest: { content: @norest.content, name: @norest.name, title: @norest.title } }
    assert_redirected_to norest_url(@norest)
  end

  test "should destroy norest" do
    assert_difference("Norest.count", -1) do
      delete norest_url(@norest)
    end

    assert_redirected_to norests_url
  end
end
