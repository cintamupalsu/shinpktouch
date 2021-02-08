require "test_helper"

class KanjasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get kanjas_new_url
    assert_response :success
  end
end
