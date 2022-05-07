require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'For the Post model' do
    before(:each) do
      @user = User.new(name: 'John', bio: 'Teacher from Dubai', posts_counter: 0)
      @post = Post.new(author: @user, title: 'Test', text: 'testing', likes_counter: 7, comments_counter: 5)
    end

    before { @post.save }

    it 'if there is title' do
      @post.title = true
      expect(@post).to be_valid
    end

    it 'if there is max 250 characters' do
      @post.title = 'Testing'
      expect(@post).to be_valid
    end

    it 'if likes counter is integer' do
      @post.likes_counter = 5
      expect(@post).to be_valid
    end

    it 'if likes counter greater than or equal to zero' do
      @post.likes_counter = -9
      expect(@post).to_not be_valid
    end

    it 'if comments counter greater than or equal to zero.' do
      @post.comments_counter = -5
      expect(@post).to_not be_valid
    end

    it 'if comments counter is integer' do
      @post.comments_counter = 8
      expect(@post).to be_valid
    end

    it 'should return recent comments' do
      @post.comments.create(text: 'test', author: @user)
      expect(@post.recent_comments.first.text).to eq('test')
    end

    it 'should return recent comments' do
      @post.comments.create(text: 'testing', author: @user)
      @post.comments.create(text: 'testing1', author: @user)
      @post.comments.create(text: 'testing2', author: @user)
      @post.comments.create(text: 'testing3', author: @user)
      @post.comments.create(text: 'testing4', author: @user)
      expect(@post.recent_comments.length).to eq(5)
    end
  end
end
