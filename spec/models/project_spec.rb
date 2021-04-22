require "rails_helper"

RSpec.describe Post, type: :model do
  context "validations tests" do
    it "ensures the title is present" do
      post = Post.new(description: "Content of the description")
      expect(post.valid?).to eq(false)
    end

    it "ensures the description is present" do
      post = Post.new(title: "Title")
      expect(post.valid?).to eq(false)
    end
    
    it "should be able to save project" do
      post = Post.new(title: "Title", description: "Some description content goes here")
      expect(post.save).to eq(true)
    end
  end

  context "scopes tests" do
    let(:params) { { title: "Title", description: "some description" } }
    before(:each) do
        Post.create(params)
        Post.create(params)
        Post.create(params)
    end
    
    it "should return all projects" do
        expect(Post.count).to eq(3)
    end

  end
end