class Photo < ApplicationRecord
  belongs_to :item, optional: true
  mount_uploaders :images, PhotoUploader
end
