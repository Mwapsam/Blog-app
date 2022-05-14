require 'rails_helper'

RSpec.feature 'Testing user show page', type: :feature do
  before(:each) do
    User.destroy_all
    @first = User.create(name: 'John', photo: '/assets/profile-placeholder-15235acc91950fc6e35d44cd5337db6ca48c73d53e4aa0f7f8dec750ad5242ce.png',
                         bio: 'Teacher from Mexico', email: 'john@gmail.com', password: 'johnsecret', confirmed_at: Time.now, role: 'admin', posts_counter: 0)

    Post.create(title: 'Command on Windows', text: 'My text', author_id: @first.id, likes_counter: 0, comments_counter: 0)
    Post.create(title: 'Command on Linux', text: 'My text', author_id: @first.id, likes_counter: 0, comments_counter: 0)
    Post.create(title: 'Command on Mac', text: 'My text', author_id: @first.id, likes_counter: 0, comments_counter: 0)

    visit user_session_path

    within 'form' do
      fill_in 'Email', with: @first.email
      fill_in 'Password', with: @first.password
    end

    click_button 'Log in'
  end

  background { visit user_path(User.first.id) }

  scenario "I can see the user's username" do
    expect(page).to have_content('John')
  end

  scenario "I can see the user's profile picture" do
    expect(page.first('img')['src']).to have_content '/assets/profile-placeholder-15235acc91950fc6e35d44cd5337db6ca48c73d53e4aa0f7f8dec750ad5242ce.png'
  end

  scenario 'If the user can see the number of posts written' do
    expect(page).to have_content('Wrote 3 posts')
  end

  scenario "I can see the user's bio" do
    expect(page).to have_content('Teacher from Mexico')
  end

  scenario "I can see the user's posts" do
    expect(page).to have_content('Command on Windows')
    expect(page).to have_content('Command on Linux')
    expect(page).to have_content('Command on Mac')
  end

  scenario "I can see a button that lets me view all of a user's posts" do
    click_link('All posts')
    expect(current_path).to eq user_posts_path(User.first.id)
  end
end
