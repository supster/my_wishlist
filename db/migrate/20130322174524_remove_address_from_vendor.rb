class RemoveAddressFromVendor < ActiveRecord::Migration
  def up
    remove_column :vendors, :address
  end
end
