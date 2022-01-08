class CreateNfts < ActiveRecord::Migration[6.1]
  def change
    create_table :nfts do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.datetime :created_on
      t.datetime :sold_on
      t.boolean :sold, default: false

      t.timestamps
    end
  end
end
