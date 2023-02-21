require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get articles_list_url
    assert_response :success
  end
end
