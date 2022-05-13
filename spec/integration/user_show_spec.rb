require 'rails_helper'

RSpec.feature 'Testing user show page', type: :feature do
before(:each) do
    @first = User.create(name: 'John', photo: 'profile.jpg', bio: 'Teacher from Mexico.', email: 'john@gmail.com',
                         password: 'johnsecret', confirmed_at: Time.now, posts_counter: 3, role: 'admin')

    Post.create(title: 'Command on Windows', text: 'How to add, commit and push to git',
                        author_id: @first, created_at: Time.now, updated_at: Time.now)
    
    Post.create(title: 'Command on Linux', text: 'How to add, commit and push to git',
                        author_id: @first, created_at: Time.now, updated_at: Time.now)

    Post.create(title: 'Command on Mac', text: 'How to add, commit and push to git',
                        author_id: @first, created_at: Time.now, updated_at: Time.now)

    visit user_session_path

    within 'form' do
      fill_in 'Email', with: @first.email
      fill_in 'Password', with: @first.password
    end

    click_button 'Log in'
  end

    background { visit user_path(@first.id) }

    scenario "I can see the user's username" do
        expect(page).to have_content('John')
    end

    scenario "I can see the user's profile picture" do
        expect(page.first('img')['src']).to have_content '/assets/profile-placeholder-15235acc91950fc6e35d44cd5337db6ca48c73d53e4aa0f7f8dec750ad5242ce.png'
    end

    scenario "I can see the number of posts the user has written" do
        expect(page).to have_content('Wrote 3 posts')
    end

end