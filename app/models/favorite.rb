class Favorite < ActiveRecord::Base
  attr_accessible :vendor_id
  belongs_to :user
  belongs_to :vendor
  
  validates :user_id, presence: true
  validates :vendor_id, presence: true  
  
end
