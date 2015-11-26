class MenuController < ApplicationController
  def index
    @categories = Category.all
  end
  
  def category
    @category = Category.find(params[:id])
  end
  
end
