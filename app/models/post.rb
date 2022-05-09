class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'

  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :title, length: { in: 1..250 }, presence: true, allow_blank: false
  validates_numericality_of :comments_counter, only_integer: true, greater_than_or_equal_to: 0
  validates_numericality_of :likes_counter, only_integer: true, greater_than_or_equal_to: 0

  after_save :update_posts_counter

  def update_posts_counter
    author.increment!(:posts_counter)
  end

  def recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end
