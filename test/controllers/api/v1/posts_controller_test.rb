require 'test_helper'

class Api::V1::PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get api_v1_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_post_url
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post api_v1_posts_url, params: { post: {  } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test "should show post" do
    get api_v1_post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch api_v1_post_url(@post), params: { post: {  } }
    assert_redirected_to post_url(@post)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete api_v1_post_url(@post)
    end

    assert_redirected_to api_v1_posts_url
  end
end
