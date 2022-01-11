class AddNftToBaskets < ActiveRecord::Migration[6.1]
  def change
    add_reference :baskets, :nft, null: false, foreign_key: true
  end
end
