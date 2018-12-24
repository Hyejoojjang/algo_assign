require 'test_helper'

class InfoControllerTest < ActionDispatch::IntegrationTest
  test "should get result" do
    get info_result_url
    assert_response :success
  end

end
