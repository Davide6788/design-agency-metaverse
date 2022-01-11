class Basket < ApplicationRecord
  validates :paid, presence: true
  belongs_to :user
  belongs_to :nft
end
