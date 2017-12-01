require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end # 아래 실행 전에 @post를 지정해줌.

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, post: { content: @post.content, title: @post.title, user_id: @post.user_id }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should show post" do
    get :show, id: @post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post
    assert_response :success
  end

  test "should update post" do
    patch :update, id: @post, post: { content: @post.content, title: @post.title }
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to posts_path
  end

  # 댓글 잘 달리는지 알아보는 테스트
  test "should create comment" do
    # assert_difference('Comment.count') do
    #   comment :create, comment: { content: @comment.content }
    # end

    # assert_redirected_to "/posts/#{@post.id}"
    # ajax 했기 때문에 redirect to 가 의미가 없다..
    # 위 지움 나는 안지움!!
  end
end
