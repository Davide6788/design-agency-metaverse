class CreateNfts < ActiveRecord::Migration[6.1]
  def change
    create_table :nfts do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.boolean :paid, default: false

      t.timestamps
    end
  end
end
