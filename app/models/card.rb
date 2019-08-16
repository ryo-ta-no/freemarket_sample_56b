class Card < ApplicationRecord
  belongs_to :users

# 値が「10文字以上、30文字以下」である
validates :card_number, length: { in: 1..20 }

end
