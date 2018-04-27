require 'test_helper'

class PostcommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get postcomments_new_url
    assert_response :success
  end

end
