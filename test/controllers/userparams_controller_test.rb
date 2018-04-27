require 'test_helper'

class UserparamsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get userparams_show_url
    assert_response :success
  end

end
