RSpec.describe Comment, type: :model do
  describe 'Validations For the Comment model' do
    before(:each) do
      @comment = Comment.new(text: 'One comment', author_id: 11, post_id: 32)
    end

    before { @comment.save }

    it 'if title is present' do
      @comment.text = nil
      expect(@comment).to_not be_valid
    end

    it 'if author_id is integer' do
      @comment.author_id = 'W'
      expect(@comment).to_not be_valid
    end

    it 'if post_id is integer' do
      @comment.post_id = 'Q'
      expect(@comment).to_not be_valid
    end
  end
end
