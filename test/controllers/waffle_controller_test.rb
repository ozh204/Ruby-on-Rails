require 'test_helper'

class WaffleControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get waffle_new_url
    assert_response :success
  end

  test "should get show" do
    get waffle_show_url
    assert_response :success
  end

  test "should get edit" do
    get waffle_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get waffle_destroy_url
    assert_response :success
  end

end
