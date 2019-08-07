class Size < ApplicationRecord
  has_many :items
  has_many :categories through:size_categories
end
