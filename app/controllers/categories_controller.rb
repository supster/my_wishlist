class CategoriesController < ApplicationController
  def index
    @category = Category.new
    @categories = Category.all    
  end

  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(params[:category])
    if @category.save
      flash[:success] = "Catagory Added!"
      redirect_to categories_path
    else
      render "new"
    end    
  end
end
