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
  end
end
