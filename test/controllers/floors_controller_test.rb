require 'test_helper'

class FloorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get floors_index_url
    assert_response :success
  end

  test "should get show" do
    get floors_show_url
    assert_response :success
  end

end
