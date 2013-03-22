class Vendor < ActiveRecord::Base
  attr_accessible :name, :description, :street_address, :city, :state_abbr, :zip_code, :url
  has_many :products
  
end
