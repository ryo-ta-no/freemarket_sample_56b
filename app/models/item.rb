class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  enum state: [['---',""], ['新品、未使用', 1], ['未使用に近い', 2],['目立った傷や汚れなし', 3], ['やや傷や汚れあり', 4], ['傷や汚れあり', 5], ['全体的に状態が悪い', 6]]
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :postage_day
  belongs_to :postage
  has_many :phone
  belongs_to :user
  belongs_to :size
  belongs_to :category
  belongs_to :brand
  belongs_to :buyer,class_name: "User"
  belongs_to :seller,class_name: "User"
end
