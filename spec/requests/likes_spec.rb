require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'Validations For the Like model' do
    before(:each) do
      @like = Like.new(author_id: 2, post_id: 7)
    end

    before { @like.save }

    it 'if author_id is present' do
      @like.author_id = false
      expect(@like).to_not be_valid
    end

    it 'if post_id is present' do
      @like.post_id = nil
      @like.author_id = nil
      expect(@like).to_not be_valid
    end
  end
end
