require 'test_helper'

class PublicPostsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get posts_category" do
    get :posts_category
    assert_response :success
  end

end
