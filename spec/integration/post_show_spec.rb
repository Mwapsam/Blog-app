require 'rails_helper'

RSpec.describe 'Posts show page', type: :feature do
  before(:each) do
    @user = User.create(name: 'Mwape', photo: 'profile.jpg', bio: 'Developer from Zambia', email: 'test@email.com',
                        password: 'password', confirmed_at: Time.now)
    @user1 = User.create(name: 'Lungu', photo: 'profile.jpg', bio: 'Developer from SA', email: 'test1@email.com',
                         password: 'password', confirmed_at: Time.now)
    @post = Post.create(author: @user, title: 'My title', text: 'My text')
    @comment = Comment.create(text: 'My first comment', author: @user, post_id: @post.id)
    @comment = Comment.create(text: 'My second comment', author: @user1, post_id: @post.id)
    @like = Like.create(author: @user, post_id: @post.id)
    visit new_user_session_path
    fill_in 'Email', with: 'test@email.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    visit user_post_path(user_id: @post.author_id, id: @post.id)
  end

  describe 'Specs for view posts#show' do
    it 'Can see the posts title.' do
      expect(page).to have_content 'My title'
    end

    it 'Can see who wrote the post' do
      expect(page).to have_content 'Mwape'
    end

    it 'Can see how many comments it has' do
      expect(page).to have_content 'Comments: 2'
    end

    it 'Can see how many likes it has' do
      expect(page).to have_content 'Likes: 1'
    end

    it 'Can see the post body' do
      expect(page).to have_content 'My text'
    end

    it 'Can see the username of each commentor' do
      expect(page).to have_content 'Mwape'
      expect(page).to have_content 'Lungu'
    end

    it 'Can see the comment each commentor left' do
      expect(page).to have_content 'My first comment'
      expect(page).to have_content 'My second comment'
    end
  end
end