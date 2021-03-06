class Comment < ApplicationRecord
  mount_uploader :image_url, ImageUploader
  belongs_to :restaurant, optional: true
  accepts_nested_attributes_for :restaurant
end