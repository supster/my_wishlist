class VendorsController < ApplicationController
  def index
    @vendors = Vendor.paginate(page: params[:page], per_page: 15, order: "name ASC")
  end
  
  def show
    @vendor = Vendor.find(params[:id])
    @reviews = @vendor.reviews.paginate(page: params[:page], per_page: 10, order: "created_at DESC")
    @categories = @vendor.categories 
  end
end
