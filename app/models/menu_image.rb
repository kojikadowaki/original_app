class MenuImage < ApplicationRecord
  mount_uploader :url, ImageUploader
  belongs_to :restaurant, optional: true
end
