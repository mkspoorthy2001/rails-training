require "test_helper"

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get index3" do
    get search_index3_url
    assert_response :success
  end
end
