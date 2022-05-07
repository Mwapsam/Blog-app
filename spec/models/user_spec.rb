require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations for User model' do
    before(:each) do
      @user = User.new(name: 'John')
    end

    before { @user.save }

    it 'if there is name' do
      @user.name = nil
      expect(@user).to_not be_valid
    end

    it 'PostsCounter must be greater than or equal to zero' do
      @user.posts_counter = -1
      expect(@user).to_not be_valid
    end

    it 'PostsCounter must be greater than or equal to zero' do
      @user.posts_counter = 7
      expect(@user).to be_valid
    end

    it 'should return recent comments' do
      user = User.create(name: 'John', bio: 'Teacher from Dubai', posts_counter: 0)
      Post.create(author: user, title: 'Test', text: 'testing', likes_counter: 7, comments_counter: 5)
      expect(user.recent_posts.first.title).to eq('Test')
    end

    it 'should return recent comments' do
      user = User.create(name: 'John', bio: 'Teacher from Dubai', posts_counter: 0)
      Post.create(author: user, title: 'Test', text: 'testing', likes_counter: 7, comments_counter: 5)
      Post.create(author: user, title: 'Test1', text: 'testing1', likes_counter: 7, comments_counter: 5)
      Post.create(author: user, title: 'Test2', text: 'testing2', likes_counter: 7, comments_counter: 5)
      expect(user.recent_posts.length).to eq(3)
    end
  end
end
