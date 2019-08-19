class Postage < ApplicationRecord
  has_ancestry
  has_many :items
end
