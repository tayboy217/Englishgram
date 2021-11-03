require 'test_helper'

class EnglishesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get englishes_index_url
    assert_response :success
  end

  test "should get show" do
    get englishes_show_url
    assert_response :success
  end

  test "should get new" do
    get englishes_new_url
    assert_response :success
  end

  test "should get edit" do
    get englishes_edit_url
    assert_response :success
  end

end
