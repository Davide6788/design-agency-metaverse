class Nft < ApplicationRecord
  validates :title, :description, :price, :rented, presence: true
end
