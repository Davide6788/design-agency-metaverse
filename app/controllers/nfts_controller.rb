class NftsController < ApplicationController

  def show
    @nft = Nft.find(params[:id])
  end

  def new
    @nft = Nft.new
  end

  def create
    @nft = Nft.new(nft_params)
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
    params.require(:nft).permit(:title, :description, :price, :rented)
  end
end
