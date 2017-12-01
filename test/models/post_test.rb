require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "post save" do
    post = Post.new({
      title: 'post test title',
      content: 'post test content',
      user_id: 1
      })
    assert post.save, 'Fail to save' # boolean 값을 넣는다.
  end

  test "post length validation" do
    post = Post.new({
      title: Faker::Lorem.paragraph(sentence_count = 10),
      content: Faker::Lorem.paragraph(sentence_count = 10),
      user_id: 1
      })
    refute post.save, 'Validation Success' # boolean 값을 넣는다.
    # 왜? 이렇게하지?? => validation에 걸렸다는 의미에서 이렇게!! error 메세지가 안 나오게!!
  end

end
