require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get learn" do
    get :learn
    assert_response :success
  end

  test "should get make" do
    get :make
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
