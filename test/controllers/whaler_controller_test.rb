require 'test_helper'

class WhalerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get whaler_show_url
    assert_response :success
  end

end
