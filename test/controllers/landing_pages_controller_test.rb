require "test_helper"

class LandingPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get landing_pages_home_url
    assert_response :success
  end

  test "should get help" do
    get landing_pages_help_url
    assert_response :success
  end
end
