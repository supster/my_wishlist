class VendorsController < ApplicationController
  def index
    @vendors = Vendor.paginate(page: params[:page], per_page: 10, order: "name ASC")
  end
  
  def show
    @vendor = Vendor.find(params[:id])
  end
end
