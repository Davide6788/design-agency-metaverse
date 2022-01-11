class BasketsController < ApplicationController
  def index
    @baskets = Basket.all
  end

  def new
    @basket = Basket.new
  end

  def create
    @basket = Basket.new(basket_params)
    @basket.user = current_user.id
    if @basket.save
      redirect_to baskets_path(@basket)
    else
      redirect_to nfts_path
    end
  end

  def destroy
    @basket = Basket.find(params[:id])
    @basket.destroy
  end

  private

  def basket_params
    params.require(:basket, :basket.user).permit(:paid)
  end
end
