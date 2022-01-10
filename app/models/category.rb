class Category < ApplicationRecord
  validates :category_name, presence: true, inclusion: { in: %w(kitchen dedroom desk arts&crafts ) }
end
