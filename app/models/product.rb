class Product < ActiveRecord::Base
  belongs_to :vendor
  has_and_belongs_to_many :wishlist
  attr_accessible :name, :description, :price
  
  validates :vendor_id, presence: true
  validates :name, presence: true, length: { maximum: 250 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
