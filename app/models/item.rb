class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  has_many :phone
  belongs_to :user
  belongs_to :size
  belongs_to :category
  belongs_to :brand
  belongs_to :buyer,class_name: "User"
  belongs_to :seller,class_name: "User"
end
