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
    if @nft.save
      redirect_to nft_path(@nft)
    else
      render :new
    end
  end
  

  private

  def nft_params
    params.require(:list).permit(:title, :description, :price, :category_id)
  end

end
