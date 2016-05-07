require 'test_helper'

class MapControllerTest < ActionController::TestCase
  test "should get map_list" do
    get :map_list
    assert_response :success
  end

  test "should get map_read" do
    get :map_read
    assert_response :success
  end

  test "should get map_write" do
    get :map_write
    assert_response :success
  end

  test "should get map_update" do
    get :map_update
    assert_response :success
  end

end
