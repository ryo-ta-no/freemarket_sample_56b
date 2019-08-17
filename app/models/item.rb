class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :postage_day
  belongs_to_active_hash :state
  belongs_to :postage
  has_many :photos
  belongs_to :user, optional: true
  belongs_to :size, optional: true
  belongs_to :category, optional: true
  belongs_to :brand, optional: true

  
end
