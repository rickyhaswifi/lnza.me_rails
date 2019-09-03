require 'test_helper'

class EnglishLandingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get english_landing_index_url
    assert_response :success
  end

end
