require 'rails_helper'

RSpec.feature 'Testing user index page', type: :feature do
  before(:each) do
    @first = User.create(name: 'John', photo: 'profile.jpg', bio: 'Teacher from Mexico.', email: 'john@gmail.com',
                         password: 'johnsecret', confirmed_at: Time.now, posts_counter: 0, role: 'admin')

    @second = User.create(name: 'James', photo: 'profile.jpg', bio: 'Teacher from Mexico.', email: 'james@gmail.com',
                         password: 'johnsecret', confirmed_at: Time.now, posts_counter: 0, role: 'admin')

    @third = User.create(name: 'Jack', photo: 'profile.jpg', bio: 'Teacher from Mexico.', email: 'jack@gmail.com',
                         password: 'johnsecret', confirmed_at: Time.now, posts_counter: 0, role: 'admin')

    Post.create
    
    Post.create(title: 'Command on Linux', text: 'How to add, commit and push to git',
                        author_id: @first.id, created_at: Time.now, updated_at: Time.now)

    Post.create(title: 'Command on Mac', text: 'How to add, commit and push to git',
                        author_id: @second.id, created_at: Time.now, updated_at: Time.now)

    visit user_session_path

    within 'form' do
      fill_in 'Email', with: @first.email
      fill_in 'Password', with: @first.password
    end

    click_button 'Log in'
  end

  background { visit root_path }
  scenario 'I can see the username of all other users' do
    expect(page).to have_content('John')
    expect(page).to have_content('James')
    expect(page).to have_content('Jack')
  end

  scenario 'I can see the profile picture for each user' do
    expect(page.first('img')['src']).to have_content '/assets/profile-331ac230e0fd2c083832c1e173e55cad28ef5ab37ea79830cc4fa9496ceeefd7.jpg'
  end

  scenario 'I can see the number of posts each user has written' do
    expect(page).to have_content('Number of posts: 0')
    expect(page).to have_content('Number of posts: 0')
  end

  scenario "When I click on a user, I am redirected to that user's show page" do
    click_link 'John', match: :first
    expect(current_path).to eq user_path @first
  end
end
