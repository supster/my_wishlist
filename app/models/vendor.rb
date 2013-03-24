class Vendor < ActiveRecord::Base
  attr_accessible :name, :description, :street_address, :city, :state_abbr, :zip_code, :url
  has_many :products
  has_many :reviews
  has_many :favorites
  has_and_belongs_to_many :categories
  
  validates :name, presence: true, length: { maximum: 50 }
end
