class NftsController < ApplicationController

  def index
    @nft = Nft.all
  end

  def show
    @nft = Nft.find(params[:id])
  end

  def new
    @nft = Nft.new
  end

  def create
    @nft = Nft.new(nft_params)
    @nft.user_id = current_user.id
    if @nft.save
      redirect_to nft_path(@nft)
    else
      render :new
    end
  end

  def update
    @nft = Nft.find(params[:id])
    @nft.update(params[:nft])
  end

  def destroy
    @nft = Nft.find(params[:id])
    @nft.destroy
  end

  private

  def nft_params
    params.require(:nft).permit(:title, :description, :price, :rented, :category_id, :photo)
  end

end
