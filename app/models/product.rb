class Product < ActiveRecord::Base
  belongs_to :vendor
  has_and_belongs_to_many :wishlist
  attr_accessible :description, :name, :price
end
