class Nft < ApplicationRecord
  validates :title, :description, :price, :rented, presence: true
  belongs_to :category
  belongs_to :user
  has_one :basket
end
