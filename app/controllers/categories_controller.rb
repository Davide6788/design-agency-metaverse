class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    if params[:query].present?
      @nfts = @category.nfts.where(title: params[:query])
    else
      # raise
      @nfts = @category.nfts.where(paid: false)
    end
  end
end
