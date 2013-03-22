class AddAddressToVendor < ActiveRecord::Migration
  def change
    add_column :vendors, :street_address, :string
    add_column :vendors, :city, :string
    add_column :vendors, :state_abbr, :string
    add_column :vendors, :zip_code, :string
  end
end
