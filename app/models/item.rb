class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  has_many :phone
  belongs_to :user
  belomgs_to :size
  belongs_to :category
  belongs_to :brand
end
