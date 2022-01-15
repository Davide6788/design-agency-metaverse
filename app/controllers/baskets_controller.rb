class BasketsController < ApplicationController
  def index
    @baskets = Basket.all
  end

  def paid
    @baskets = Basket.where(paid: true, user_id: current_user)
  end

  def update
    @basket = Basket.find(params[:id])
    @basket.paid = true
    @basket.update(basket_params)
    redirect_to paid_baskets_path
  end

  def pending
    @baskets = Basket.where(paid: false, user_id: current_user)
  end

 # def pay
  #  @basket = Basket.find(params[:id])
   # if @basket.save
    #  @basket.paid = true
     # redirect_to paid_baskets_path
   # else
    #  redirect_to nfts_path
   # end
 # end

  def show
    # @nft = Nft.find(params[:nft_id])
    # @basket.nft = @nft
    @basket = Basket.find(params[:id])
  end

  def new
    @basket = Basket.new
    @nft = Nft.find(params[:nft_id])
  end

  def create
    @nft = Nft.find(params[:nft_id])
    @basket = Basket.new(basket_params)
    @basket.nft = @nft
    @basket.user = current_user
    @basket.paid = false
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
    params.require(:basket).permit(:nft_id, :paid)
  end

end
