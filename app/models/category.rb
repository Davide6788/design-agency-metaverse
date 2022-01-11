class Category < ApplicationRecord
  validates :category_name, presence: true, inclusion: { in: %w(kitchen bedroom desk arts&crafts ) }
end
