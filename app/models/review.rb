class Review < ActiveRecord::Base
  attr_accessible :review_score, :review_text
  belongs_to :user
  belongs_to :vendor
  
  validates :user_id, presence: true
  validates :vendor_id, presence: true
  validates :review_text, presence: true, length: { maximum: 2000 }
  validates :review_score, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 5 }
  
  def reviewer
    self.user.name
  end
end
