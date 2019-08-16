class Card < ApplicationRecord

  belongs_to :user, optional: true
  validates :card_number, length: { in: 1..20 }
end
