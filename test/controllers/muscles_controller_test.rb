require 'test_helper'

class MusclesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get muscles_index_url
    assert_response :success
  end

  test "should get show" do
    get muscles_show_url
    assert_response :success
  end

end
