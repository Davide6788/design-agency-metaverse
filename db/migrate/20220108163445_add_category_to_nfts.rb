class AddCategoryToNfts < ActiveRecord::Migration[6.1]
  def change
    add_reference :nfts, :category, null: false, foreign_key: true
  end
end
