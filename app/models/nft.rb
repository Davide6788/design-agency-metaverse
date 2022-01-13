class Nft < ApplicationRecord
  validates :title, :description, :price, presence: true
  # validates :rented, presence: true
  # belongs_to :category
  belongs_to :user
  has_one :basket
end
