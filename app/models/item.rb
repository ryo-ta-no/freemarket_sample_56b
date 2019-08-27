class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :postage_day
  belongs_to_active_hash :state
  belongs_to :postage

  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true

  belongs_to :buyer,class_name:"User", optional: true
  belongs_to :user,class_name:"User", optional: true
  belongs_to :size, optional: true
  belongs_to :category, optional: true
  belongs_to :brand, optional: true


end
