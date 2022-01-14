class BasketsController < ApplicationController
  def index
    @baskets = Basket.all
  end

  def paid
    @baskets = Basket.where(paid: true, user_id: current_user)
  end

  def pending
    @baskets = Basket.where(paid: false, user_id: current_user)
  end

  def show

  end

  def new
    @basket = Basket.new
    @nft = Nft.find(params[:nft_id])
  end

  def create
    @basket = Basket.new(basket_params)
    @basket.user = current_user
    @nft = Nft.find(params[:nft_id])
    @basket.nft = @nft
    @basket.paid = true
    if @basket.save
      redirect_to basket_path(@basket)
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
    params.require(:basket).permit(:nft_id)
  end

end
