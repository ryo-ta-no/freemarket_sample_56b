class Category < ApplicationRecord
  has_ancestry
  has_many :items
  has_many :sizes, through: :size_categories
end
