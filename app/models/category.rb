class Category < ApplicationRecord
  has_ancestry
  has_many :items
  has_many :categories through:size_categories
end
