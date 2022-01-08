class CreateNfts < ActiveRecord::Migration[6.1]
  def change
    create_table :nfts do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.date :rented_from
      t.date :rented_to
      t.boolean :rented, default: false

      t.timestamps
    end
  end
end
