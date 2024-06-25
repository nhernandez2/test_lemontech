require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest

  setup do
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    get root_url
    assert_response :success
  end
end
