require 'rails_helper'

RSpec.describe 'Posts show page', type: :feature do
  before(:each) do
    User.destroy_all
    @user = User.create(name: 'Mwape', photo: 'https://i.kinja-img.com/gawker-media/image/upload/t_original/ijsi5fzb1nbkbhxa2gc1.png', bio: 'Developer from Zambia', email: 'test@email.com',
                        password: 'password', confirmed_at: Time.now, role: 'admin',  posts_counter: 0)
    @user1 = User.create(name: 'Lungu', photo: 'profile.jpg', bio: 'Developer from SA', email: 'test1@email.com',
                         password: 'password', confirmed_at: Time.now)
    Post.create(title: 'My title', text: 'My text', author_id: @user.id, likes_counter: 0, comments_counter: 0)
    @comment = Comment.create(text: 'My first comment', author: @user, id: Post.first.id)
    @comment = Comment.create(text: 'My second comment', author: @user1, id: Post.first.id)
    @like = Like.create(author: @user, id: Post.first.id)
    
    visit new_user_session_path
    fill_in 'Email', with: 'test@email.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    visit "/users/#{User.first.id}/posts/#{Post.first.id}"
  end

  describe 'Specs for view posts#show' do
    it 'Can see the posts title.' do
      expect(page).to have_content 'My title'
    end

    it 'Can see who wrote the post' do
      expect(page).to have_content('Mwape')
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
