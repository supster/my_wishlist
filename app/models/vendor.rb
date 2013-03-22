class Vendor < ActiveRecord::Base
  attr_accessible :address, :description, :name, :url
end
