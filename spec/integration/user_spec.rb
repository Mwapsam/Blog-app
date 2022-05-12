require 'rails_helper'

RSpec.feature 'Hello world', type: :feature do
  before(:each) do
    @user1 = User.create(name: 'John', photo: 'somephoto', bio: 'Teacher from Mexico.', email: 'john@gmail.com',
                         password: 'johnsecret', confirmed_at: Time.now, posts_counter: 0, role: 'admin')

    visit user_session_path

    within 'form' do
      fill_in 'Email', with: @user1.email
      fill_in 'Password', with: @user1.password
    end

    click_button 'Log in'
  end

  background { visit root_path }
  scenario 'shows the right content' do
    expect(page).to have_content('John')
  end
end
