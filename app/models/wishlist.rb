class Wishlist < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :products
  attr_accessible :description, :name
end
