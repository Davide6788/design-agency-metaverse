class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    if params[:query].present?
      @nfts = @category.nfts.where(title: params[:query])
    else
      @nfts = @category.nfts
    end
  end
end
