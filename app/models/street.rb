class Street < ApplicationRecord
  belongs_to :user, optional: true
end
