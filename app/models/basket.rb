class Basket < ApplicationRecord
  validates :paid, presence: true
end
