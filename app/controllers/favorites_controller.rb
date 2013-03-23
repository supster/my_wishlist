class FavoritesController < ApplicationController
  before_filter :signed_in_user

  respond_to :html, :js
  
  def create
    @vendor = Vendor.find(params[:vendor_id])
    current_user.favorite!(params[:vendor_id])
    respond_with @vendor
    #redirect_to vendor_path(params[:vendor_id])
  end

  def destroy
    @vendor = Vendor.find(params[:vendor_id])
    current_user.unfavorite!(params[:vendor_id])
    respond_with @vendor
    #redirect_to vendor_path(params[:vendor_id])
  end

  def index
    @favorites = current_user.favorites.paginate(page: params[:page], per_page: 10)
  end
end
