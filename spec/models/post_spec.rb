require 'rails_helper'

RSpec.describe Post, type: :model do
# #1 Using let method, we create a new instance of the Post class
# #  let dynamically defines a method and upon first call within a spec computes ad stores the returned value
  let(:post) { Post.create!(title: "New Post Title", body: "New Post Body") }

# #2 we test whether post has attributes named title and body.
# #  This tests whether post will return a non-nil value for post.title and post.body
  describe "attributes" do
    it "has title and body attributes" do
      expect(post).to have_attributes(title: "New Post Title", body: "New Post Body")
    end
  end
end
