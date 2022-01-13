class Nft < ApplicationRecord
  validates :title, :description, :price, presence: true
  has_one_attached :photo
  belongs_to :category
  belongs_to :user
  has_one :basket
end
