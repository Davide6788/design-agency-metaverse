class AddUserToNfts < ActiveRecord::Migration[6.1]
  def change
    add_reference :nfts, :user, null: false, foreign_key: true
  end
end
