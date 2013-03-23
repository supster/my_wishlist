class ReviewsController < ApplicationController
  before_filter :signed_in_user, only: [:new, :edit, :update]
  
  def new
    @vendor = Vendor.find_by_id(params[:vendor_id])
    @review = current_user.reviews.build if signed_in?
  end
  
  def create
    @review = current_user.reviews.build(params[:review])
    @review.vendor_id = params[:vendor_id]
    if @review.save
      flash[:success] = "Review posted!"
      redirect_to vendor_path(params[:vendor_id])
    else
      @vendor = Vendor.find_by_id(params[:vendor_id])
      render "new"
    end
  end  
end
