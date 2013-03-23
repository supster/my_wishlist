class Vendor < ActiveRecord::Base
  attr_accessible :name, :description, :street_address, :city, :state_abbr, :zip_code, :url
  has_many :products
  has_many :reviews
  
  validates :name, presence: true, length: { maximum: 50 }
end
