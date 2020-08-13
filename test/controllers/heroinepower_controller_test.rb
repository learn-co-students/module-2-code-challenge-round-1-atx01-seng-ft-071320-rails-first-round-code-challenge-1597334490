require 'test_helper'

class HeroinepowerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get heroinepower_new_url
    assert_response :success
  end

  test "should get create" do
    get heroinepower_create_url
    assert_response :success
  end

end
